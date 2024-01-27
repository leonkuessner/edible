# -*- coding: utf-8 -*-
# code generated by Prisma. DO NOT EDIT.
# pyright: reportUnusedImport=false
# fmt: off
from __future__ import annotations

# global imports for type checking
from builtins import bool as _bool
from builtins import int as _int
from builtins import float as _float
from builtins import str as _str
import sys
import decimal
import datetime
from typing import (
    TYPE_CHECKING,
    Optional,
    Iterable,
    Iterator,
    Sequence,
    Callable,
    ClassVar,
    NoReturn,
    TypeVar,
    Generic,
    Mapping,
    Tuple,
    Union,
    List,
    Dict,
    Type,
    Any,
    Set,
    overload,
    cast,
)
from typing_extensions import TypedDict, Literal


from typing_extensions import LiteralString
# -- template engine/query.py.jinja --

import os
import json
import time
import atexit
import signal
import asyncio
import logging
import subprocess
from datetime import timedelta
from pathlib import Path

from . import utils, errors
from .http import HTTPEngine
from .. import config
from ..utils import DEBUG
from ..binaries import platform
from ..utils import time_since, _env_bool
from ..types import DatasourceOverride, MetricsFormat
from ..builder import dumps
from .._constants import DEFAULT_CONNECT_TIMEOUT
from ._types import TransactionId


__all__ = ('QueryEngine',)

log: logging.Logger = logging.getLogger(__name__)


class QueryEngine(HTTPEngine):
    dml_path: Path
    url: Optional[str]
    file: Optional[Path]
    process: subprocess.Popen[bytes] | subprocess.Popen[str] | None

    def __init__(self, *, dml_path: Path, log_queries: bool = False, **kwargs: Any) -> None:
        super().__init__(url=None, **kwargs)
        self.dml_path = dml_path
        self._log_queries = log_queries
        self.process = None
        self.file = None

        # ensure the query engine process is terminated when we are
        atexit.register(self.stop)

    def close(self, *, timeout: Optional[timedelta] = None) -> None:
        log.debug('Disconnecting query engine...')

        if timeout is not None:
            total_seconds = timeout.total_seconds()
        else:
            total_seconds = None

        if self.process is not None:
            if platform.name() == 'windows':
                self.process.kill()
                self.process.wait(timeout=total_seconds)
            else:
                self.process.send_signal(signal.SIGINT)
                try:
                    self.process.wait(timeout=total_seconds)
                except subprocess.TimeoutExpired:
                    self.process.send_signal(signal.SIGKILL)

            self.process = None

        self._close_session()
        log.debug('Disconnected query engine')

    async def aclose(self, *, timeout: Optional[timedelta] = None) -> None:
        self.close(timeout=timeout)
        self._close_session()

    def _close_session(self) -> None:
        if self.session and not self.session.closed:
            self.session.close()

    def _ensure_file(self) -> Path:
        # circular import
        from ..client import BINARY_PATHS

        return utils.ensure(BINARY_PATHS.query_engine)

    def connect(
        self,
        timeout: timedelta = DEFAULT_CONNECT_TIMEOUT,
        datasources: Optional[List[DatasourceOverride]] = None,
    ) -> None:
        log.debug('Connecting to query engine')
        if self.process is not None:
            raise errors.AlreadyConnectedError('Already connected to the query engine')

        start = time.monotonic()
        self.file = file = self._ensure_file()

        try:
            self.spawn(file, timeout=timeout, datasources=datasources)
        except Exception:
            self.close()
            raise

        log.debug('Connecting to query engine took %s', time_since(start))

    def spawn(
        self,
        file: Path,
        timeout: timedelta = DEFAULT_CONNECT_TIMEOUT,
        datasources: Optional[List[DatasourceOverride]] = None,
    ) -> None:
        port = utils.get_open_port()
        log.debug('Running query engine on port %i', port)

        self.url = f'http://localhost:{port}'

        env = os.environ.copy()
        env.update(
            PRISMA_DML_PATH=str(self.dml_path.absolute()),
            RUST_LOG='error',
            RUST_LOG_FORMAT='json',
            PRISMA_CLIENT_ENGINE_TYPE='binary',
            PRISMA_ENGINE_PROTOCOL='graphql',
        )

        if DEBUG:
            env.update(RUST_LOG='info')

        if datasources is not None:
            env.update(OVERWRITE_DATASOURCES=dumps(datasources))

        # TODO: remove the noise from these query logs
        if self._log_queries:
            env.update(LOG_QUERIES='y')

        args: List[str] = [
            str(file.absolute()),
            '-p',
            str(port),
            '--enable-metrics',
            '--enable-raw-queries',
        ]
        if _env_bool('__PRISMA_PY_PLAYGROUND'):
            env.update(RUST_LOG='info')
            args.append('--enable-playground')

        log.debug('Starting query engine...')
        popen_kwargs: Dict[str,Any] = {
            "env": env,
            "stdout": sys.stdout,
            "stderr": sys.stderr,
            "text": False,
        }
        if platform.name() != 'windows':
            # ensure SIGINT is unblocked before forking the query engine
            # https://github.com/RobertCraigie/prisma-client-py/pull/678
            popen_kwargs["preexec_fn"] = lambda: signal.pthread_sigmask(
                signal.SIG_UNBLOCK, [signal.SIGINT, signal.SIGTERM]
            )

        self.process = subprocess.Popen(
            args,
            **popen_kwargs
        )

        last_exc = None
        for _ in range(int(timeout.total_seconds() / 0.1)):
            try:
                data = self.request('GET', '/status')
            except Exception as exc:
                # TODO(someday): only retry on ConnectionError
                if isinstance(exc, AttributeError):
                    raise

                last_exc = exc
                log.debug(
                    'Could not connect to query engine due to %s; retrying...',
                    exc,
                )
                time.sleep(0.1)

                continue

            if data.get('Errors') is not None:
                log.debug('Could not connect due to gql errors; retrying...')
                time.sleep(0.1)

                continue

            break
        else:
            raise errors.EngineConnectionError(
                'Could not connect to the query engine'
            ) from last_exc

    def query(
        self,
        content: str,
        *,
        tx_id: TransactionId | None,
    ) -> Any:
        headers: Dict[str, str] = {}
        if tx_id is not None:
            headers['X-transaction-id'] = tx_id

        return self.request(
            'POST',
            '/',
            content=content,
            headers=headers,
        )

    def start_transaction(self, *, content: str) -> TransactionId:
        result = self.request(
            'POST',
            '/transaction/start',
            content=content,
        )
        return TransactionId(result['id'])

    def commit_transaction(self, tx_id: TransactionId) -> None:
        self.request(
            'POST', f'/transaction/{tx_id}/commit'
        )

    def rollback_transaction(self, tx_id: TransactionId) -> None:
        self.request(
            'POST', f'/transaction/{tx_id}/rollback'
        )

    @overload
    def metrics(
        self,
        *,
        format: Literal['json'],
        global_labels: dict[str, str] | None,
    ) -> dict[str, Any]:
        ...

    @overload
    def metrics(
        self,
        *,
        format: Literal['prometheus'],
        global_labels: dict[str, str] | None,
    ) -> str:
        ...

    def metrics(
        self,
        *,
        format: MetricsFormat,
        global_labels: dict[str, str] | None,
    ) -> str | dict[str, Any]:
        if global_labels is not None:
            content = json.dumps(global_labels)
        else:
            content = None

        return self.request(  # type: ignore[no-any-return]
            'GET',
            f'/metrics?format={format}',
            content=content,
            parse_response=format == 'json',
        )

# black does not respect the fmt: off comment without this
# fmt: on
