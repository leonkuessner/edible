library prisma.client; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:orm/dmmf.dart' as _i5;
import 'package:orm/engines/binary.dart' as _i4;
import 'package:orm/orm.dart' as _i1;

import 'model.dart' as _i2;
import 'prisma.dart' as _i3;

class ProfileDelegate {
  const ProfileDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Profile?> findUnique({
    required _i3.ProfileWhereUniqueInput where,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile?>(
      action: 'findUniqueProfile',
      result: result,
      factory: (e) => e != null ? _i2.Profile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Profile> findUniqueOrThrow({
    required _i3.ProfileWhereUniqueInput where,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile>(
      action: 'findUniqueProfileOrThrow',
      result: result,
      factory: (e) => _i2.Profile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Profile?> findFirst({
    _i3.ProfileWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProfileOrderByWithRelationInput>,
            _i3.ProfileOrderByWithRelationInput>?
        orderBy,
    _i3.ProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProfileScalar, Iterable<_i3.ProfileScalar>>? distinct,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile?>(
      action: 'findFirstProfile',
      result: result,
      factory: (e) => e != null ? _i2.Profile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Profile> findFirstOrThrow({
    _i3.ProfileWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProfileOrderByWithRelationInput>,
            _i3.ProfileOrderByWithRelationInput>?
        orderBy,
    _i3.ProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProfileScalar, Iterable<_i3.ProfileScalar>>? distinct,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile>(
      action: 'findFirstProfileOrThrow',
      result: result,
      factory: (e) => _i2.Profile.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Profile>> findMany({
    _i3.ProfileWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProfileOrderByWithRelationInput>,
            _i3.ProfileOrderByWithRelationInput>?
        orderBy,
    _i3.ProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.ProfileScalar, Iterable<_i3.ProfileScalar>>? distinct,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Profile>>(
      action: 'findManyProfile',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Profile.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Profile> create({
    required _i1
        .PrismaUnion<_i3.ProfileCreateInput, _i3.ProfileUncheckedCreateInput>
        data,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile>(
      action: 'createOneProfile',
      result: result,
      factory: (e) => _i2.Profile.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.ProfileCreateManyInput,
            Iterable<_i3.ProfileCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Profile?> update({
    required _i1
        .PrismaUnion<_i3.ProfileUpdateInput, _i3.ProfileUncheckedUpdateInput>
        data,
    required _i3.ProfileWhereUniqueInput where,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile?>(
      action: 'updateOneProfile',
      result: result,
      factory: (e) => e != null ? _i2.Profile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.ProfileUpdateManyMutationInput,
            _i3.ProfileUncheckedUpdateManyInput>
        data,
    _i3.ProfileWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Profile> upsert({
    required _i3.ProfileWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.ProfileCreateInput, _i3.ProfileUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.ProfileUpdateInput, _i3.ProfileUncheckedUpdateInput>
        update,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile>(
      action: 'upsertOneProfile',
      result: result,
      factory: (e) => _i2.Profile.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Profile?> delete({
    required _i3.ProfileWhereUniqueInput where,
    _i3.ProfileSelect? select,
    _i3.ProfileInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Profile?>(
      action: 'deleteOneProfile',
      result: result,
      factory: (e) => e != null ? _i2.Profile.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.ProfileWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyProfile',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.ProfileGroupByOutputType>> groupBy({
    _i3.ProfileWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProfileOrderByWithAggregationInput>,
            _i3.ProfileOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.ProfileScalar>, _i3.ProfileScalar> by,
    _i3.ProfileScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.ProfileGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.ProfileGroupByOutputType>>(
      action: 'groupByProfile',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.ProfileGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateProfile> aggregate({
    _i3.ProfileWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.ProfileOrderByWithRelationInput>,
            _i3.ProfileOrderByWithRelationInput>?
        orderBy,
    _i3.ProfileWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateProfileSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Profile',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateProfile>(
      action: 'aggregateProfile',
      result: result,
      factory: (e) => _i3.AggregateProfile.fromJson(e),
    );
  }
}

class FollowDelegate {
  const FollowDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Follow?> findUnique({
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'findUniqueFollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Follow> findUniqueOrThrow({
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'findUniqueFollowOrThrow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow?> findFirst({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FollowOrderByWithRelationInput>,
            _i3.FollowOrderByWithRelationInput>?
        orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FollowScalar, Iterable<_i3.FollowScalar>>? distinct,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'findFirstFollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Follow> findFirstOrThrow({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FollowOrderByWithRelationInput>,
            _i3.FollowOrderByWithRelationInput>?
        orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FollowScalar, Iterable<_i3.FollowScalar>>? distinct,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'findFirstFollowOrThrow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Follow>> findMany({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FollowOrderByWithRelationInput>,
            _i3.FollowOrderByWithRelationInput>?
        orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.FollowScalar, Iterable<_i3.FollowScalar>>? distinct,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Follow>>(
      action: 'findManyFollow',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Follow.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Follow> create({
    required _i1
        .PrismaUnion<_i3.FollowCreateInput, _i3.FollowUncheckedCreateInput>
        data,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'createOneFollow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.FollowCreateManyInput,
            Iterable<_i3.FollowCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyFollow',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow?> update({
    required _i1
        .PrismaUnion<_i3.FollowUpdateInput, _i3.FollowUncheckedUpdateInput>
        data,
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'updateOneFollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.FollowUpdateManyMutationInput,
            _i3.FollowUncheckedUpdateManyInput>
        data,
    _i3.FollowWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyFollow',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow> upsert({
    required _i3.FollowWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.FollowCreateInput, _i3.FollowUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.FollowUpdateInput, _i3.FollowUncheckedUpdateInput>
        update,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow>(
      action: 'upsertOneFollow',
      result: result,
      factory: (e) => _i2.Follow.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Follow?> delete({
    required _i3.FollowWhereUniqueInput where,
    _i3.FollowSelect? select,
    _i3.FollowInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Follow?>(
      action: 'deleteOneFollow',
      result: result,
      factory: (e) => e != null ? _i2.Follow.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.FollowWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyFollow',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.FollowGroupByOutputType>> groupBy({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FollowOrderByWithAggregationInput>,
            _i3.FollowOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.FollowScalar>, _i3.FollowScalar> by,
    _i3.FollowScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.FollowGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.FollowGroupByOutputType>>(
      action: 'groupByFollow',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.FollowGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateFollow> aggregate({
    _i3.FollowWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.FollowOrderByWithRelationInput>,
            _i3.FollowOrderByWithRelationInput>?
        orderBy,
    _i3.FollowWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateFollowSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Follow',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateFollow>(
      action: 'aggregateFollow',
      result: result,
      factory: (e) => _i3.AggregateFollow.fromJson(e),
    );
  }
}

class PostDelegate {
  const PostDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Post?> findUnique({
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'findUniquePost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Post> findUniqueOrThrow({
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'findUniquePostOrThrow',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post?> findFirst({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostOrderByWithRelationInput>,
            _i3.PostOrderByWithRelationInput>?
        orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostScalar, Iterable<_i3.PostScalar>>? distinct,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'findFirstPost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Post> findFirstOrThrow({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostOrderByWithRelationInput>,
            _i3.PostOrderByWithRelationInput>?
        orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostScalar, Iterable<_i3.PostScalar>>? distinct,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'findFirstPostOrThrow',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Post>> findMany({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostOrderByWithRelationInput>,
            _i3.PostOrderByWithRelationInput>?
        orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostScalar, Iterable<_i3.PostScalar>>? distinct,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Post>>(
      action: 'findManyPost',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Post.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Post> create({
    required _i1.PrismaUnion<_i3.PostCreateInput, _i3.PostUncheckedCreateInput>
        data,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'createOnePost',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1
        .PrismaUnion<_i3.PostCreateManyInput, Iterable<_i3.PostCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPost',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post?> update({
    required _i1.PrismaUnion<_i3.PostUpdateInput, _i3.PostUncheckedUpdateInput>
        data,
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'updateOnePost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PostUpdateManyMutationInput,
            _i3.PostUncheckedUpdateManyInput>
        data,
    _i3.PostWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPost',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post> upsert({
    required _i3.PostWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.PostCreateInput, _i3.PostUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.PostUpdateInput, _i3.PostUncheckedUpdateInput>
        update,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post>(
      action: 'upsertOnePost',
      result: result,
      factory: (e) => _i2.Post.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Post?> delete({
    required _i3.PostWhereUniqueInput where,
    _i3.PostSelect? select,
    _i3.PostInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Post?>(
      action: 'deleteOnePost',
      result: result,
      factory: (e) => e != null ? _i2.Post.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PostWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPost',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PostGroupByOutputType>> groupBy({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostOrderByWithAggregationInput>,
            _i3.PostOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PostScalar>, _i3.PostScalar> by,
    _i3.PostScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PostGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostGroupByOutputType>>(
      action: 'groupByPost',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PostGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePost> aggregate({
    _i3.PostWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostOrderByWithRelationInput>,
            _i3.PostOrderByWithRelationInput>?
        orderBy,
    _i3.PostWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePostSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Post',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePost>(
      action: 'aggregatePost',
      result: result,
      factory: (e) => _i3.AggregatePost.fromJson(e),
    );
  }
}

class PostTagDelegate {
  const PostTagDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.PostTag?> findUnique({
    required _i3.PostTagWhereUniqueInput where,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag?>(
      action: 'findUniquePostTag',
      result: result,
      factory: (e) => e != null ? _i2.PostTag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostTag> findUniqueOrThrow({
    required _i3.PostTagWhereUniqueInput where,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag>(
      action: 'findUniquePostTagOrThrow',
      result: result,
      factory: (e) => _i2.PostTag.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostTag?> findFirst({
    _i3.PostTagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostTagOrderByWithRelationInput>,
            _i3.PostTagOrderByWithRelationInput>?
        orderBy,
    _i3.PostTagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostTagScalar, Iterable<_i3.PostTagScalar>>? distinct,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag?>(
      action: 'findFirstPostTag',
      result: result,
      factory: (e) => e != null ? _i2.PostTag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostTag> findFirstOrThrow({
    _i3.PostTagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostTagOrderByWithRelationInput>,
            _i3.PostTagOrderByWithRelationInput>?
        orderBy,
    _i3.PostTagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostTagScalar, Iterable<_i3.PostTagScalar>>? distinct,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag>(
      action: 'findFirstPostTagOrThrow',
      result: result,
      factory: (e) => _i2.PostTag.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.PostTag>> findMany({
    _i3.PostTagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostTagOrderByWithRelationInput>,
            _i3.PostTagOrderByWithRelationInput>?
        orderBy,
    _i3.PostTagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostTagScalar, Iterable<_i3.PostTagScalar>>? distinct,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.PostTag>>(
      action: 'findManyPostTag',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.PostTag.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PostTag> create({
    required _i1
        .PrismaUnion<_i3.PostTagCreateInput, _i3.PostTagUncheckedCreateInput>
        data,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag>(
      action: 'createOnePostTag',
      result: result,
      factory: (e) => _i2.PostTag.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PostTagCreateManyInput,
            Iterable<_i3.PostTagCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPostTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostTag?> update({
    required _i1
        .PrismaUnion<_i3.PostTagUpdateInput, _i3.PostTagUncheckedUpdateInput>
        data,
    required _i3.PostTagWhereUniqueInput where,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag?>(
      action: 'updateOnePostTag',
      result: result,
      factory: (e) => e != null ? _i2.PostTag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PostTagUpdateManyMutationInput,
            _i3.PostTagUncheckedUpdateManyInput>
        data,
    _i3.PostTagWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPostTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostTag> upsert({
    required _i3.PostTagWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PostTagCreateInput, _i3.PostTagUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PostTagUpdateInput, _i3.PostTagUncheckedUpdateInput>
        update,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag>(
      action: 'upsertOnePostTag',
      result: result,
      factory: (e) => _i2.PostTag.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostTag?> delete({
    required _i3.PostTagWhereUniqueInput where,
    _i3.PostTagSelect? select,
    _i3.PostTagInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostTag?>(
      action: 'deleteOnePostTag',
      result: result,
      factory: (e) => e != null ? _i2.PostTag.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PostTagWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPostTag',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PostTagGroupByOutputType>> groupBy({
    _i3.PostTagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostTagOrderByWithAggregationInput>,
            _i3.PostTagOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PostTagScalar>, _i3.PostTagScalar> by,
    _i3.PostTagScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PostTagGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostTagGroupByOutputType>>(
      action: 'groupByPostTag',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PostTagGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePostTag> aggregate({
    _i3.PostTagWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostTagOrderByWithRelationInput>,
            _i3.PostTagOrderByWithRelationInput>?
        orderBy,
    _i3.PostTagWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePostTagSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostTag',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePostTag>(
      action: 'aggregatePostTag',
      result: result,
      factory: (e) => _i3.AggregatePostTag.fromJson(e),
    );
  }
}

class PostImageDelegate {
  const PostImageDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.PostImage?> findUnique({
    required _i3.PostImageWhereUniqueInput where,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage?>(
      action: 'findUniquePostImage',
      result: result,
      factory: (e) => e != null ? _i2.PostImage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostImage> findUniqueOrThrow({
    required _i3.PostImageWhereUniqueInput where,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage>(
      action: 'findUniquePostImageOrThrow',
      result: result,
      factory: (e) => _i2.PostImage.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostImage?> findFirst({
    _i3.PostImageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostImageOrderByWithRelationInput>,
            _i3.PostImageOrderByWithRelationInput>?
        orderBy,
    _i3.PostImageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostImageScalar, Iterable<_i3.PostImageScalar>>?
        distinct,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage?>(
      action: 'findFirstPostImage',
      result: result,
      factory: (e) => e != null ? _i2.PostImage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostImage> findFirstOrThrow({
    _i3.PostImageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostImageOrderByWithRelationInput>,
            _i3.PostImageOrderByWithRelationInput>?
        orderBy,
    _i3.PostImageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostImageScalar, Iterable<_i3.PostImageScalar>>?
        distinct,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage>(
      action: 'findFirstPostImageOrThrow',
      result: result,
      factory: (e) => _i2.PostImage.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.PostImage>> findMany({
    _i3.PostImageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostImageOrderByWithRelationInput>,
            _i3.PostImageOrderByWithRelationInput>?
        orderBy,
    _i3.PostImageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostImageScalar, Iterable<_i3.PostImageScalar>>?
        distinct,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.PostImage>>(
      action: 'findManyPostImage',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.PostImage.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PostImage> create({
    required _i1.PrismaUnion<_i3.PostImageCreateInput,
            _i3.PostImageUncheckedCreateInput>
        data,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage>(
      action: 'createOnePostImage',
      result: result,
      factory: (e) => _i2.PostImage.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PostImageCreateManyInput,
            Iterable<_i3.PostImageCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPostImage',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostImage?> update({
    required _i1.PrismaUnion<_i3.PostImageUpdateInput,
            _i3.PostImageUncheckedUpdateInput>
        data,
    required _i3.PostImageWhereUniqueInput where,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage?>(
      action: 'updateOnePostImage',
      result: result,
      factory: (e) => e != null ? _i2.PostImage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PostImageUpdateManyMutationInput,
            _i3.PostImageUncheckedUpdateManyInput>
        data,
    _i3.PostImageWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPostImage',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostImage> upsert({
    required _i3.PostImageWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.PostImageCreateInput,
            _i3.PostImageUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.PostImageUpdateInput,
            _i3.PostImageUncheckedUpdateInput>
        update,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage>(
      action: 'upsertOnePostImage',
      result: result,
      factory: (e) => _i2.PostImage.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostImage?> delete({
    required _i3.PostImageWhereUniqueInput where,
    _i3.PostImageSelect? select,
    _i3.PostImageInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostImage?>(
      action: 'deleteOnePostImage',
      result: result,
      factory: (e) => e != null ? _i2.PostImage.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PostImageWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPostImage',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PostImageGroupByOutputType>> groupBy({
    _i3.PostImageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostImageOrderByWithAggregationInput>,
            _i3.PostImageOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PostImageScalar>, _i3.PostImageScalar>
        by,
    _i3.PostImageScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PostImageGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostImageGroupByOutputType>>(
      action: 'groupByPostImage',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PostImageGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePostImage> aggregate({
    _i3.PostImageWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostImageOrderByWithRelationInput>,
            _i3.PostImageOrderByWithRelationInput>?
        orderBy,
    _i3.PostImageWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePostImageSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostImage',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePostImage>(
      action: 'aggregatePostImage',
      result: result,
      factory: (e) => _i3.AggregatePostImage.fromJson(e),
    );
  }
}

class GroupDelegate {
  const GroupDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Group?> findUnique({
    required _i3.GroupWhereUniqueInput where,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group?>(
      action: 'findUniqueGroup',
      result: result,
      factory: (e) => e != null ? _i2.Group.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Group> findUniqueOrThrow({
    required _i3.GroupWhereUniqueInput where,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group>(
      action: 'findUniqueGroupOrThrow',
      result: result,
      factory: (e) => _i2.Group.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Group?> findFirst({
    _i3.GroupWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.GroupOrderByWithRelationInput>,
            _i3.GroupOrderByWithRelationInput>?
        orderBy,
    _i3.GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.GroupScalar, Iterable<_i3.GroupScalar>>? distinct,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group?>(
      action: 'findFirstGroup',
      result: result,
      factory: (e) => e != null ? _i2.Group.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Group> findFirstOrThrow({
    _i3.GroupWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.GroupOrderByWithRelationInput>,
            _i3.GroupOrderByWithRelationInput>?
        orderBy,
    _i3.GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.GroupScalar, Iterable<_i3.GroupScalar>>? distinct,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group>(
      action: 'findFirstGroupOrThrow',
      result: result,
      factory: (e) => _i2.Group.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Group>> findMany({
    _i3.GroupWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.GroupOrderByWithRelationInput>,
            _i3.GroupOrderByWithRelationInput>?
        orderBy,
    _i3.GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.GroupScalar, Iterable<_i3.GroupScalar>>? distinct,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Group>>(
      action: 'findManyGroup',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Group.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Group> create({
    required _i1
        .PrismaUnion<_i3.GroupCreateInput, _i3.GroupUncheckedCreateInput>
        data,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group>(
      action: 'createOneGroup',
      result: result,
      factory: (e) => _i2.Group.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.GroupCreateManyInput,
            Iterable<_i3.GroupCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyGroup',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Group?> update({
    required _i1
        .PrismaUnion<_i3.GroupUpdateInput, _i3.GroupUncheckedUpdateInput>
        data,
    required _i3.GroupWhereUniqueInput where,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group?>(
      action: 'updateOneGroup',
      result: result,
      factory: (e) => e != null ? _i2.Group.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.GroupUpdateManyMutationInput,
            _i3.GroupUncheckedUpdateManyInput>
        data,
    _i3.GroupWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyGroup',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Group> upsert({
    required _i3.GroupWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.GroupCreateInput, _i3.GroupUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.GroupUpdateInput, _i3.GroupUncheckedUpdateInput>
        update,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group>(
      action: 'upsertOneGroup',
      result: result,
      factory: (e) => _i2.Group.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Group?> delete({
    required _i3.GroupWhereUniqueInput where,
    _i3.GroupSelect? select,
    _i3.GroupInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Group?>(
      action: 'deleteOneGroup',
      result: result,
      factory: (e) => e != null ? _i2.Group.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.GroupWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyGroup',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.GroupGroupByOutputType>> groupBy({
    _i3.GroupWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.GroupOrderByWithAggregationInput>,
            _i3.GroupOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.GroupScalar>, _i3.GroupScalar> by,
    _i3.GroupScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.GroupGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.GroupGroupByOutputType>>(
      action: 'groupByGroup',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.GroupGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateGroup> aggregate({
    _i3.GroupWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.GroupOrderByWithRelationInput>,
            _i3.GroupOrderByWithRelationInput>?
        orderBy,
    _i3.GroupWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateGroupSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Group',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateGroup>(
      action: 'aggregateGroup',
      result: result,
      factory: (e) => _i3.AggregateGroup.fromJson(e),
    );
  }
}

class MemberDelegate {
  const MemberDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Member?> findUnique({
    required _i3.MemberWhereUniqueInput where,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member?>(
      action: 'findUniqueMember',
      result: result,
      factory: (e) => e != null ? _i2.Member.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Member> findUniqueOrThrow({
    required _i3.MemberWhereUniqueInput where,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member>(
      action: 'findUniqueMemberOrThrow',
      result: result,
      factory: (e) => _i2.Member.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Member?> findFirst({
    _i3.MemberWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MemberOrderByWithRelationInput>,
            _i3.MemberOrderByWithRelationInput>?
        orderBy,
    _i3.MemberWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MemberScalar, Iterable<_i3.MemberScalar>>? distinct,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member?>(
      action: 'findFirstMember',
      result: result,
      factory: (e) => e != null ? _i2.Member.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Member> findFirstOrThrow({
    _i3.MemberWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MemberOrderByWithRelationInput>,
            _i3.MemberOrderByWithRelationInput>?
        orderBy,
    _i3.MemberWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MemberScalar, Iterable<_i3.MemberScalar>>? distinct,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member>(
      action: 'findFirstMemberOrThrow',
      result: result,
      factory: (e) => _i2.Member.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Member>> findMany({
    _i3.MemberWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MemberOrderByWithRelationInput>,
            _i3.MemberOrderByWithRelationInput>?
        orderBy,
    _i3.MemberWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.MemberScalar, Iterable<_i3.MemberScalar>>? distinct,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Member>>(
      action: 'findManyMember',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Member.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Member> create({
    required _i1
        .PrismaUnion<_i3.MemberCreateInput, _i3.MemberUncheckedCreateInput>
        data,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member>(
      action: 'createOneMember',
      result: result,
      factory: (e) => _i2.Member.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.MemberCreateManyInput,
            Iterable<_i3.MemberCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyMember',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Member?> update({
    required _i1
        .PrismaUnion<_i3.MemberUpdateInput, _i3.MemberUncheckedUpdateInput>
        data,
    required _i3.MemberWhereUniqueInput where,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member?>(
      action: 'updateOneMember',
      result: result,
      factory: (e) => e != null ? _i2.Member.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.MemberUpdateManyMutationInput,
            _i3.MemberUncheckedUpdateManyInput>
        data,
    _i3.MemberWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyMember',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Member> upsert({
    required _i3.MemberWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.MemberCreateInput, _i3.MemberUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.MemberUpdateInput, _i3.MemberUncheckedUpdateInput>
        update,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member>(
      action: 'upsertOneMember',
      result: result,
      factory: (e) => _i2.Member.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Member?> delete({
    required _i3.MemberWhereUniqueInput where,
    _i3.MemberSelect? select,
    _i3.MemberInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Member?>(
      action: 'deleteOneMember',
      result: result,
      factory: (e) => e != null ? _i2.Member.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.MemberWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyMember',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.MemberGroupByOutputType>> groupBy({
    _i3.MemberWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MemberOrderByWithAggregationInput>,
            _i3.MemberOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.MemberScalar>, _i3.MemberScalar> by,
    _i3.MemberScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.MemberGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.MemberGroupByOutputType>>(
      action: 'groupByMember',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.MemberGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateMember> aggregate({
    _i3.MemberWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.MemberOrderByWithRelationInput>,
            _i3.MemberOrderByWithRelationInput>?
        orderBy,
    _i3.MemberWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateMemberSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Member',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateMember>(
      action: 'aggregateMember',
      result: result,
      factory: (e) => _i3.AggregateMember.fromJson(e),
    );
  }
}

class CommentDelegate {
  const CommentDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Comment?> findUnique({
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'findUniqueComment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Comment> findUniqueOrThrow({
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'findUniqueCommentOrThrow',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment?> findFirst({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentOrderByWithRelationInput>,
            _i3.CommentOrderByWithRelationInput>?
        orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentScalar, Iterable<_i3.CommentScalar>>? distinct,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'findFirstComment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Comment> findFirstOrThrow({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentOrderByWithRelationInput>,
            _i3.CommentOrderByWithRelationInput>?
        orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentScalar, Iterable<_i3.CommentScalar>>? distinct,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'findFirstCommentOrThrow',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Comment>> findMany({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentOrderByWithRelationInput>,
            _i3.CommentOrderByWithRelationInput>?
        orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentScalar, Iterable<_i3.CommentScalar>>? distinct,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Comment>>(
      action: 'findManyComment',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Comment.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Comment> create({
    required _i1
        .PrismaUnion<_i3.CommentCreateInput, _i3.CommentUncheckedCreateInput>
        data,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'createOneComment',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.CommentCreateManyInput,
            Iterable<_i3.CommentCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyComment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment?> update({
    required _i1
        .PrismaUnion<_i3.CommentUpdateInput, _i3.CommentUncheckedUpdateInput>
        data,
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'updateOneComment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.CommentUpdateManyMutationInput,
            _i3.CommentUncheckedUpdateManyInput>
        data,
    _i3.CommentWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyComment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment> upsert({
    required _i3.CommentWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.CommentCreateInput, _i3.CommentUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.CommentUpdateInput, _i3.CommentUncheckedUpdateInput>
        update,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment>(
      action: 'upsertOneComment',
      result: result,
      factory: (e) => _i2.Comment.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Comment?> delete({
    required _i3.CommentWhereUniqueInput where,
    _i3.CommentSelect? select,
    _i3.CommentInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Comment?>(
      action: 'deleteOneComment',
      result: result,
      factory: (e) => e != null ? _i2.Comment.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.CommentWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyComment',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CommentGroupByOutputType>> groupBy({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentOrderByWithAggregationInput>,
            _i3.CommentOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.CommentScalar>, _i3.CommentScalar> by,
    _i3.CommentScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CommentGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CommentGroupByOutputType>>(
      action: 'groupByComment',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.CommentGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateComment> aggregate({
    _i3.CommentWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentOrderByWithRelationInput>,
            _i3.CommentOrderByWithRelationInput>?
        orderBy,
    _i3.CommentWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCommentSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Comment',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateComment>(
      action: 'aggregateComment',
      result: result,
      factory: (e) => _i3.AggregateComment.fromJson(e),
    );
  }
}

class PostLikeDelegate {
  const PostLikeDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.PostLike?> findUnique({
    required _i3.PostLikeWhereUniqueInput where,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike?>(
      action: 'findUniquePostLike',
      result: result,
      factory: (e) => e != null ? _i2.PostLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostLike> findUniqueOrThrow({
    required _i3.PostLikeWhereUniqueInput where,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike>(
      action: 'findUniquePostLikeOrThrow',
      result: result,
      factory: (e) => _i2.PostLike.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostLike?> findFirst({
    _i3.PostLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostLikeOrderByWithRelationInput>,
            _i3.PostLikeOrderByWithRelationInput>?
        orderBy,
    _i3.PostLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostLikeScalar, Iterable<_i3.PostLikeScalar>>? distinct,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike?>(
      action: 'findFirstPostLike',
      result: result,
      factory: (e) => e != null ? _i2.PostLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.PostLike> findFirstOrThrow({
    _i3.PostLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostLikeOrderByWithRelationInput>,
            _i3.PostLikeOrderByWithRelationInput>?
        orderBy,
    _i3.PostLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostLikeScalar, Iterable<_i3.PostLikeScalar>>? distinct,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike>(
      action: 'findFirstPostLikeOrThrow',
      result: result,
      factory: (e) => _i2.PostLike.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.PostLike>> findMany({
    _i3.PostLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostLikeOrderByWithRelationInput>,
            _i3.PostLikeOrderByWithRelationInput>?
        orderBy,
    _i3.PostLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.PostLikeScalar, Iterable<_i3.PostLikeScalar>>? distinct,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.PostLike>>(
      action: 'findManyPostLike',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.PostLike.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.PostLike> create({
    required _i1
        .PrismaUnion<_i3.PostLikeCreateInput, _i3.PostLikeUncheckedCreateInput>
        data,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike>(
      action: 'createOnePostLike',
      result: result,
      factory: (e) => _i2.PostLike.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.PostLikeCreateManyInput,
            Iterable<_i3.PostLikeCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyPostLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostLike?> update({
    required _i1
        .PrismaUnion<_i3.PostLikeUpdateInput, _i3.PostLikeUncheckedUpdateInput>
        data,
    required _i3.PostLikeWhereUniqueInput where,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike?>(
      action: 'updateOnePostLike',
      result: result,
      factory: (e) => e != null ? _i2.PostLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.PostLikeUpdateManyMutationInput,
            _i3.PostLikeUncheckedUpdateManyInput>
        data,
    _i3.PostLikeWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyPostLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostLike> upsert({
    required _i3.PostLikeWhereUniqueInput where,
    required _i1
        .PrismaUnion<_i3.PostLikeCreateInput, _i3.PostLikeUncheckedCreateInput>
        create,
    required _i1
        .PrismaUnion<_i3.PostLikeUpdateInput, _i3.PostLikeUncheckedUpdateInput>
        update,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike>(
      action: 'upsertOnePostLike',
      result: result,
      factory: (e) => _i2.PostLike.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.PostLike?> delete({
    required _i3.PostLikeWhereUniqueInput where,
    _i3.PostLikeSelect? select,
    _i3.PostLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.PostLike?>(
      action: 'deleteOnePostLike',
      result: result,
      factory: (e) => e != null ? _i2.PostLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.PostLikeWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyPostLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.PostLikeGroupByOutputType>> groupBy({
    _i3.PostLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostLikeOrderByWithAggregationInput>,
            _i3.PostLikeOrderByWithAggregationInput>?
        orderBy,
    required _i1.PrismaUnion<Iterable<_i3.PostLikeScalar>, _i3.PostLikeScalar>
        by,
    _i3.PostLikeScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.PostLikeGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.PostLikeGroupByOutputType>>(
      action: 'groupByPostLike',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.PostLikeGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregatePostLike> aggregate({
    _i3.PostLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.PostLikeOrderByWithRelationInput>,
            _i3.PostLikeOrderByWithRelationInput>?
        orderBy,
    _i3.PostLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregatePostLikeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'PostLike',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregatePostLike>(
      action: 'aggregatePostLike',
      result: result,
      factory: (e) => _i3.AggregatePostLike.fromJson(e),
    );
  }
}

class CommentLikeDelegate {
  const CommentLikeDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.CommentLike?> findUnique({
    required _i3.CommentLikeWhereUniqueInput where,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike?>(
      action: 'findUniqueCommentLike',
      result: result,
      factory: (e) => e != null ? _i2.CommentLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CommentLike> findUniqueOrThrow({
    required _i3.CommentLikeWhereUniqueInput where,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike>(
      action: 'findUniqueCommentLikeOrThrow',
      result: result,
      factory: (e) => _i2.CommentLike.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CommentLike?> findFirst({
    _i3.CommentLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentLikeOrderByWithRelationInput>,
            _i3.CommentLikeOrderByWithRelationInput>?
        orderBy,
    _i3.CommentLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentLikeScalar, Iterable<_i3.CommentLikeScalar>>?
        distinct,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike?>(
      action: 'findFirstCommentLike',
      result: result,
      factory: (e) => e != null ? _i2.CommentLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.CommentLike> findFirstOrThrow({
    _i3.CommentLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentLikeOrderByWithRelationInput>,
            _i3.CommentLikeOrderByWithRelationInput>?
        orderBy,
    _i3.CommentLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentLikeScalar, Iterable<_i3.CommentLikeScalar>>?
        distinct,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike>(
      action: 'findFirstCommentLikeOrThrow',
      result: result,
      factory: (e) => _i2.CommentLike.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.CommentLike>> findMany({
    _i3.CommentLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentLikeOrderByWithRelationInput>,
            _i3.CommentLikeOrderByWithRelationInput>?
        orderBy,
    _i3.CommentLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.CommentLikeScalar, Iterable<_i3.CommentLikeScalar>>?
        distinct,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.CommentLike>>(
      action: 'findManyCommentLike',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.CommentLike.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.CommentLike> create({
    required _i1.PrismaUnion<_i3.CommentLikeCreateInput,
            _i3.CommentLikeUncheckedCreateInput>
        data,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike>(
      action: 'createOneCommentLike',
      result: result,
      factory: (e) => _i2.CommentLike.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.CommentLikeCreateManyInput,
            Iterable<_i3.CommentLikeCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyCommentLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CommentLike?> update({
    required _i1.PrismaUnion<_i3.CommentLikeUpdateInput,
            _i3.CommentLikeUncheckedUpdateInput>
        data,
    required _i3.CommentLikeWhereUniqueInput where,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike?>(
      action: 'updateOneCommentLike',
      result: result,
      factory: (e) => e != null ? _i2.CommentLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.CommentLikeUpdateManyMutationInput,
            _i3.CommentLikeUncheckedUpdateManyInput>
        data,
    _i3.CommentLikeWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyCommentLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CommentLike> upsert({
    required _i3.CommentLikeWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.CommentLikeCreateInput,
            _i3.CommentLikeUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.CommentLikeUpdateInput,
            _i3.CommentLikeUncheckedUpdateInput>
        update,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike>(
      action: 'upsertOneCommentLike',
      result: result,
      factory: (e) => _i2.CommentLike.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.CommentLike?> delete({
    required _i3.CommentLikeWhereUniqueInput where,
    _i3.CommentLikeSelect? select,
    _i3.CommentLikeInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.CommentLike?>(
      action: 'deleteOneCommentLike',
      result: result,
      factory: (e) => e != null ? _i2.CommentLike.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.CommentLikeWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyCommentLike',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.CommentLikeGroupByOutputType>> groupBy({
    _i3.CommentLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentLikeOrderByWithAggregationInput>,
            _i3.CommentLikeOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.CommentLikeScalar>, _i3.CommentLikeScalar>
        by,
    _i3.CommentLikeScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.CommentLikeGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.CommentLikeGroupByOutputType>>(
      action: 'groupByCommentLike',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.CommentLikeGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateCommentLike> aggregate({
    _i3.CommentLikeWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.CommentLikeOrderByWithRelationInput>,
            _i3.CommentLikeOrderByWithRelationInput>?
        orderBy,
    _i3.CommentLikeWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateCommentLikeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'CommentLike',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateCommentLike>(
      action: 'aggregateCommentLike',
      result: result,
      factory: (e) => _i3.AggregateCommentLike.fromJson(e),
    );
  }
}

class RestaurantDelegate {
  const RestaurantDelegate._(this._client);

  final PrismaClient _client;

  _i1.ActionClient<_i2.Restaurant?> findUnique({
    required _i3.RestaurantWhereUniqueInput where,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.findUnique,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant?>(
      action: 'findUniqueRestaurant',
      result: result,
      factory: (e) => e != null ? _i2.Restaurant.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Restaurant> findUniqueOrThrow({
    required _i3.RestaurantWhereUniqueInput where,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.findUniqueOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant>(
      action: 'findUniqueRestaurantOrThrow',
      result: result,
      factory: (e) => _i2.Restaurant.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Restaurant?> findFirst({
    _i3.RestaurantWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RestaurantOrderByWithRelationInput>,
            _i3.RestaurantOrderByWithRelationInput>?
        orderBy,
    _i3.RestaurantWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RestaurantScalar, Iterable<_i3.RestaurantScalar>>?
        distinct,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.findFirst,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant?>(
      action: 'findFirstRestaurant',
      result: result,
      factory: (e) => e != null ? _i2.Restaurant.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i2.Restaurant> findFirstOrThrow({
    _i3.RestaurantWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RestaurantOrderByWithRelationInput>,
            _i3.RestaurantOrderByWithRelationInput>?
        orderBy,
    _i3.RestaurantWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RestaurantScalar, Iterable<_i3.RestaurantScalar>>?
        distinct,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.findFirstOrThrow,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant>(
      action: 'findFirstRestaurantOrThrow',
      result: result,
      factory: (e) => _i2.Restaurant.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i2.Restaurant>> findMany({
    _i3.RestaurantWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RestaurantOrderByWithRelationInput>,
            _i3.RestaurantOrderByWithRelationInput>?
        orderBy,
    _i3.RestaurantWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i1.PrismaUnion<_i3.RestaurantScalar, Iterable<_i3.RestaurantScalar>>?
        distinct,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'distinct': distinct,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.findMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i2.Restaurant>>(
      action: 'findManyRestaurant',
      result: result,
      factory: (values) =>
          (values as Iterable).map((e) => _i2.Restaurant.fromJson(e)),
    );
  }

  _i1.ActionClient<_i2.Restaurant> create({
    required _i1.PrismaUnion<_i3.RestaurantCreateInput,
            _i3.RestaurantUncheckedCreateInput>
        data,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'data': data,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.createOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant>(
      action: 'createOneRestaurant',
      result: result,
      factory: (e) => _i2.Restaurant.fromJson(e),
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> createMany({
    required _i1.PrismaUnion<_i3.RestaurantCreateManyInput,
            Iterable<_i3.RestaurantCreateManyInput>>
        data,
    bool? skipDuplicates,
  }) {
    final args = {
      'data': data,
      'skipDuplicates': skipDuplicates,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.createMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'createManyRestaurant',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Restaurant?> update({
    required _i1.PrismaUnion<_i3.RestaurantUpdateInput,
            _i3.RestaurantUncheckedUpdateInput>
        data,
    required _i3.RestaurantWhereUniqueInput where,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'data': data,
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.updateOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant?>(
      action: 'updateOneRestaurant',
      result: result,
      factory: (e) => e != null ? _i2.Restaurant.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> updateMany({
    required _i1.PrismaUnion<_i3.RestaurantUpdateManyMutationInput,
            _i3.RestaurantUncheckedUpdateManyInput>
        data,
    _i3.RestaurantWhereInput? where,
  }) {
    final args = {
      'data': data,
      'where': where,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.updateMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'updateManyRestaurant',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Restaurant> upsert({
    required _i3.RestaurantWhereUniqueInput where,
    required _i1.PrismaUnion<_i3.RestaurantCreateInput,
            _i3.RestaurantUncheckedCreateInput>
        create,
    required _i1.PrismaUnion<_i3.RestaurantUpdateInput,
            _i3.RestaurantUncheckedUpdateInput>
        update,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'create': create,
      'update': update,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.upsertOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant>(
      action: 'upsertOneRestaurant',
      result: result,
      factory: (e) => _i2.Restaurant.fromJson(e),
    );
  }

  _i1.ActionClient<_i2.Restaurant?> delete({
    required _i3.RestaurantWhereUniqueInput where,
    _i3.RestaurantSelect? select,
    _i3.RestaurantInclude? include,
  }) {
    final args = {
      'where': where,
      'select': select,
      'include': include,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.deleteOne,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i2.Restaurant?>(
      action: 'deleteOneRestaurant',
      result: result,
      factory: (e) => e != null ? _i2.Restaurant.fromJson(e) : null,
    );
  }

  _i1.ActionClient<_i3.AffectedRowsOutput> deleteMany(
      {_i3.RestaurantWhereInput? where}) {
    final args = {'where': where};
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.deleteMany,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AffectedRowsOutput>(
      action: 'deleteManyRestaurant',
      result: result,
      factory: (e) => _i3.AffectedRowsOutput.fromJson(e),
    );
  }

  _i1.ActionClient<Iterable<_i3.RestaurantGroupByOutputType>> groupBy({
    _i3.RestaurantWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RestaurantOrderByWithAggregationInput>,
            _i3.RestaurantOrderByWithAggregationInput>?
        orderBy,
    required _i1
        .PrismaUnion<Iterable<_i3.RestaurantScalar>, _i3.RestaurantScalar>
        by,
    _i3.RestaurantScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
    _i3.RestaurantGroupByOutputTypeSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'by': _i1.JsonQuery.groupBySerializer(by),
      'having': having,
      'take': take,
      'skip': skip,
      'select': select ?? _i1.JsonQuery.groupBySelectSerializer(by),
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.groupBy,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<Iterable<_i3.RestaurantGroupByOutputType>>(
      action: 'groupByRestaurant',
      result: result,
      factory: (values) => (values as Iterable)
          .map((e) => _i3.RestaurantGroupByOutputType.fromJson(e)),
    );
  }

  _i1.ActionClient<_i3.AggregateRestaurant> aggregate({
    _i3.RestaurantWhereInput? where,
    _i1.PrismaUnion<Iterable<_i3.RestaurantOrderByWithRelationInput>,
            _i3.RestaurantOrderByWithRelationInput>?
        orderBy,
    _i3.RestaurantWhereUniqueInput? cursor,
    int? take,
    int? skip,
    _i3.AggregateRestaurantSelect? select,
  }) {
    final args = {
      'where': where,
      'orderBy': orderBy,
      'cursor': cursor,
      'take': take,
      'skip': skip,
      'select': select,
    };
    final query = _i1.serializeJsonQuery(
      args: args,
      modelName: 'Restaurant',
      action: _i1.JsonQueryAction.aggregate,
      datamodel: PrismaClient.datamodel,
    );
    final result = _client._engine.request(
      query,
      headers: _client.$transaction.headers,
      transaction: _client.$transaction.transaction,
    );
    return _i1.ActionClient<_i3.AggregateRestaurant>(
      action: 'aggregateRestaurant',
      result: result,
      factory: (e) => _i3.AggregateRestaurant.fromJson(e),
    );
  }
}

class PrismaClient {
  const PrismaClient._(
    this._engine,
    this.$transaction,
    this.$metrics,
  );

  factory PrismaClient({
    String? datasourceUrl,
    Map<String, String>? datasources,
  }) {
    datasources ??= {
      'db':
          'postgres://postgres.jcehshqlyqsdoxerdbrn:EBAvuxP5vTjEe4QD@aws-0-eu-west-2.pooler.supabase.com:6543/postgres?pgbouncer=true&connection_limit=1'
    };
    if (datasourceUrl != null) {
      datasources = datasources.map((
        key,
        value,
      ) =>
          MapEntry(
            key,
            datasourceUrl,
          ));
    }
    final engine = _i4.BinaryEngine(
      schema:
          '// This is your Prisma schema file,\n// learn more about it in the docs: https://pris.ly/d/prisma-schema\n\ngenerator client {\n  provider = "dart run orm"\n  output = "../lib/models"\n  recursive_type_depth = -1\n  interface = "sync"\n}\n\ndatasource db {\n  provider = "postgresql"\n  url      = env("DATABASE_URL")\n  directUrl = env("DIRECT_URL")\n}\n\nmodel Profile {\n  id String @id @default(uuid())\n  email String @unique @db.Text\n  username String @unique @db.Text\n  imageUrl String? @db.Text\n  public Boolean @default(false)\n\n  followsFollowing Follow[] @relation("following")\n  followsFollowed Follow[] @relation("followed")\n\n  posts Post[]\n  postTags PostTag[]\n  members Member[]\n  comments Comment[]\n  postLikes PostLike[]\n  commentLikes CommentLike[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("profile")\n}\n\nmodel Follow {\n  id String @id @default(uuid())\n\n  following Profile @relation("following", fields: [followingId], references: [id], onDelete: Cascade)\n  followingId String\n\n  followed Profile @relation("followed", fields: [followedId], references: [id], onDelete: Cascade)\n  followedId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("follow")\n}\n\nenum MealType {\n  BREAKFAST\n  LUNCH\n  DINNER\n}\n\nmodel Post {\n  id String @id @default(uuid())\n  individual Boolean\n  meal MealType\n\n  restaurant Restaurant @relation(fields: [restaurantId], references: [id], onDelete: Cascade)\n  restaurantId String\n\n  group Group? @relation(fields: [groupId], references: [id], onDelete: Cascade)\n  groupId String?\n\n  profile Profile? @relation(fields: [profileId], references: [id], onDelete: Cascade)\n  profileId String?\n\n  comments Comment[]\n  likes PostLike[]\n\n  postTags PostTag[]\n  postImages PostImage[]\n\n  review String @db.Text\n  rating Int\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("post")\n}\n\nmodel PostTag {\n  id String @id @default(uuid())\n\n  post Post @relation(fields: [postId], references: [id], onDelete: Cascade)\n  postId String\n\n  profile Profile @relation(fields: [profileId], references: [id], onDelete: Cascade)\n  profileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("post_tag")\n}\n\nmodel PostImage {\n  id String @id @default(uuid())\n\n  post Post @relation(fields: [postId], references: [id], onDelete: Cascade)\n  postId String\n\n  imageUrl String @db.Text\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("post_image")\n}\n\nmodel Group {\n  id String @id @default(uuid())\n  name String @db.Text\n  description String @db.Text\n\n  members Member[]\n  posts Post[]\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("group")\n}\n\nmodel Member {\n  id String @id @default(uuid())\n\n  profile Profile @relation(fields: [profileId], references: [id], onDelete: Cascade)\n  profileId String\n\n  group Group @relation(fields: [groupId], references: [id], onDelete: Cascade)\n  groupId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("member")\n}\n\nmodel Comment {\n  id String @id @default(uuid())\n  message String @db.Text\n\n  replies Comment[] @relation("parent")\n  likes CommentLike[]\n\n  parent Comment? @relation("parent", fields: [parentId], references: [id], onDelete: Cascade)\n  parentId String?\n\n  post Post @relation(fields: [postId], references: [id], onDelete: Cascade)\n  postId String\n\n  profile Profile @relation(fields: [profileId], references: [id], onDelete: Cascade)\n  profileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("comment")\n}\n\nmodel PostLike {\n  id String @id @default(uuid())\n\n  post Post @relation(fields: [postId], references: [id], onDelete: Cascade)\n  postId String\n\n  profile Profile @relation(fields: [profileId], references: [id], onDelete: Cascade)\n  profileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("post_like")\n}\n\nmodel CommentLike {\n  id String @id @default(uuid())\n\n  comment Comment @relation(fields: [commentId], references: [id], onDelete: Cascade)\n  commentId String\n\n  profile Profile @relation(fields: [profileId], references: [id], onDelete: Cascade)\n  profileId String\n\n  createdAt DateTime @default(now())\n  updatedAt DateTime @updatedAt @default(now())\n\n  @@map("comment_like")\n}\n\nmodel Restaurant {\n  id String @id @default(uuid())\n\n  name String @db.Text\n  yelpId String @unique @db.Text\n\n  latitude String @db.Text\n  longitude String @db.Text\n\n  posts Post[]\n\n  @@map("restaurant")\n}\n',
      datasources: datasources,
    );
    final metrics = _i1.MetricsClient(engine);
    createClientWithTransaction(
            _i1.TransactionClient<PrismaClient> transaction) =>
        PrismaClient._(
          engine,
          transaction,
          metrics,
        );
    final transaction = _i1.TransactionClient<PrismaClient>(
      engine,
      createClientWithTransaction,
    );
    return createClientWithTransaction(transaction);
  }

  static final datamodel = _i5.DataModel.fromJson({
    'enums': [
      {
        'name': 'MealType',
        'values': [
          {
            'name': 'BREAKFAST',
            'dbName': null,
          },
          {
            'name': 'LUNCH',
            'dbName': null,
          },
          {
            'name': 'DINNER',
            'dbName': null,
          },
        ],
        'dbName': null,
      }
    ],
    'models': [
      {
        'name': 'Profile',
        'dbName': 'profile',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'email',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'username',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'imageUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'public',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'Boolean',
            'default': false,
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'followsFollowing',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Follow',
            'relationName': 'following',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'followsFollowed',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Follow',
            'relationName': 'followed',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'posts',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'PostToProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postTags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostTag',
            'relationName': 'PostTagToProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'members',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Member',
            'relationName': 'MemberToProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'comments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Comment',
            'relationName': 'CommentToProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postLikes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostLike',
            'relationName': 'PostLikeToProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'commentLikes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'CommentLike',
            'relationName': 'CommentLikeToProfile',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Follow',
        'dbName': 'follow',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'following',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'following',
            'relationFromFields': ['followingId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'followingId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'followed',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'followed',
            'relationFromFields': ['followedId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'followedId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Post',
        'dbName': 'post',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'individual',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Boolean',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'meal',
            'kind': 'enum',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'MealType',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'restaurant',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Restaurant',
            'relationName': 'PostToRestaurant',
            'relationFromFields': ['restaurantId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'restaurantId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'group',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Group',
            'relationName': 'GroupToPost',
            'relationFromFields': ['groupId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'groupId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profile',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'PostToProfile',
            'relationFromFields': ['profileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'comments',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Comment',
            'relationName': 'CommentToPost',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'likes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostLike',
            'relationName': 'PostToPostLike',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postTags',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostTag',
            'relationName': 'PostToPostTag',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postImages',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'PostImage',
            'relationName': 'PostToPostImage',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'review',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'rating',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Int',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'PostTag',
        'dbName': 'post_tag',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'PostToPostTag',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'PostTagToProfile',
            'relationFromFields': ['profileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'PostImage',
        'dbName': 'post_image',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'PostToPostImage',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'imageUrl',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Group',
        'dbName': 'group',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'description',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'members',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Member',
            'relationName': 'GroupToMember',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'posts',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'GroupToPost',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Member',
        'dbName': 'member',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'MemberToProfile',
            'relationFromFields': ['profileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'group',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Group',
            'relationName': 'GroupToMember',
            'relationFromFields': ['groupId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'groupId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Comment',
        'dbName': 'comment',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'message',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'replies',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Comment',
            'relationName': 'parent',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'likes',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'CommentLike',
            'relationName': 'CommentToCommentLike',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'parent',
            'kind': 'object',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Comment',
            'relationName': 'parent',
            'relationFromFields': ['parentId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'parentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': false,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'CommentToPost',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'CommentToProfile',
            'relationFromFields': ['profileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'PostLike',
        'dbName': 'post_like',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'post',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'PostToPostLike',
            'relationFromFields': ['postId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'postId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'PostLikeToProfile',
            'relationFromFields': ['profileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'CommentLike',
        'dbName': 'comment_like',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'comment',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Comment',
            'relationName': 'CommentToCommentLike',
            'relationFromFields': ['commentId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'commentId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profile',
            'kind': 'object',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Profile',
            'relationName': 'CommentLikeToProfile',
            'relationFromFields': ['profileId'],
            'relationToFields': ['id'],
            'relationOnDelete': 'Cascade',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'profileId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': true,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'createdAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'updatedAt',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'DateTime',
            'default': {
              'name': 'now',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': true,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
      {
        'name': 'Restaurant',
        'dbName': 'restaurant',
        'fields': [
          {
            'name': 'id',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': true,
            'isReadOnly': false,
            'hasDefaultValue': true,
            'type': 'String',
            'default': {
              'name': 'uuid',
              'args': [],
            },
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'name',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'yelpId',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': true,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'latitude',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'longitude',
            'kind': 'scalar',
            'isList': false,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'String',
            'isGenerated': false,
            'isUpdatedAt': false,
          },
          {
            'name': 'posts',
            'kind': 'object',
            'isList': true,
            'isRequired': true,
            'isUnique': false,
            'isId': false,
            'isReadOnly': false,
            'hasDefaultValue': false,
            'type': 'Post',
            'relationName': 'PostToRestaurant',
            'relationFromFields': [],
            'relationToFields': [],
            'isGenerated': false,
            'isUpdatedAt': false,
          },
        ],
        'primaryKey': null,
        'uniqueFields': [],
        'uniqueIndexes': [],
        'isGenerated': false,
      },
    ],
    'types': [],
  });

  final _i1.MetricsClient $metrics;

  final _i1.TransactionClient<PrismaClient> $transaction;

  final _i1.Engine _engine;

  Future<void> $connect() => _engine.start();

  Future<void> $disconnect() => _engine.stop();

  ProfileDelegate get profile => ProfileDelegate._(this);

  FollowDelegate get follow => FollowDelegate._(this);

  PostDelegate get post => PostDelegate._(this);

  PostTagDelegate get postTag => PostTagDelegate._(this);

  PostImageDelegate get postImage => PostImageDelegate._(this);

  GroupDelegate get group => GroupDelegate._(this);

  MemberDelegate get member => MemberDelegate._(this);

  CommentDelegate get comment => CommentDelegate._(this);

  PostLikeDelegate get postLike => PostLikeDelegate._(this);

  CommentLikeDelegate get commentLike => CommentLikeDelegate._(this);

  RestaurantDelegate get restaurant => RestaurantDelegate._(this);

  _i1.RawClient<PrismaClient> get $raw => _i1.RawClient<PrismaClient>(
        _engine,
        datamodel,
        $transaction,
      );
}
