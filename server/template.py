from prisma import Prisma

def main():
  db = Prisma()
  db.connect()
  posts = db.post.find_many(where={})
  print(posts)
  db.disconnect()

if __name__ == "__main__":
  main()
