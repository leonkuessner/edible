
from prisma.client import Client

def main():
  db = Client()
  db.connect()
  posts = db.post.find_many()
  print(posts)
  db.disconnect()

if __name__ == "__main__":
  main()
