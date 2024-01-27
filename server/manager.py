from prisma.client import Client

class DatabaseManager:
    def __enter__(self):
        self.db = Client()
        self.db.connect()
        return self.db

    def __exit__(self, exc_type, exc_value, traceback):
        self.db.disconnect()