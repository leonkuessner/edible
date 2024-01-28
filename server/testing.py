from requests import put, get, post, delete
import pprint
import json
from datetime import datetime as dt
from prisma.enums import MealType

'''
Calls take way too long - need a way to improve
'''
# res = get('http://localhost:8000/businesses?latitude=51.509865&longitude=-0.118092&radius=10000&term=breakfast,dinner&price=2&limit=3')

# content = json.loads(res.content.decode('utf-8'))

# businesses = [get(f"http://localhost:8000/details/{b['id']}") for b in content]

# profile = post('http://localhost:8000/profile/', data=json.dumps({'email': 'leonkuessner3@gmail.com', 'username': 'MunchMunch', 'public': True}), headers={'Content-Type': 'application/json'})
# db1 = post('http://localhost:8000/posts/', data=json.dumps({'email': 'vkrice2475@gmail.com', 
#                                                             'userId': '45365e61-1907-4331-8fe6-d84d11ac3fda',
#                                                             'individual': True, 
#                                                             'restaurantId': 'se61yyYAHdKZ_Fq9ygXjVg', 
#                                                             'review': 'Big Munch', 
#                                                             'rating': 4, 
#                                                             'name': 'MunchMunch',
#                                                             'meal': MealType.BREAKFAST,
#                                                             'imageUrl': 'https://s3-media2.fl.yelpcdn.com/bphoto/YWWcF_UIra5KEaFkdgXB6g/o.jpg',
#                                                             'latitude': '51.509865',
#                                                             'longitude': '-0.118092',
#                                                             'userId':  '45365e61-1907-4331-8fe6-d84d11ac3fda'
#                                                             }), 
#            headers={'Content-Type': 'application/json'})

# db2 = get('http://localhost:8000/posts')
# db3 = post('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29&userId=5442b175-1f99-4d24-9a32-e698f38083d7')
# db7 = get('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29&userId=5442b175-1f99-4d24-9a32-e698f38083d7')
# db4 = get('http://localhost:8000/follows/5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')
# db5 = get('http://localhost:8000/content/5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')
# db6 = post('http://localhost:8000/comments/', 
#            data=json.dumps({'text': "My First Comment", 
#                             'userId': '5442b175-1f99-4d24-9a32-e698f38083d7', 
#                             'postId': '9247449d-235b-4805-94e5-e2d41fb44c29'}),
#            headers={'Content-Type': 'application/json'}
#         )
# db8 = get('http://localhost:8000/comments?postId=9247449d-235b-4805-94e5-e2d41fb44c29')
# db9 = delete('http://localhost:8000/comments?id=1e3e29ba-935a-425a-914b-7d32d8e5c3fc')
# db10 = get('http://localhost:8000/comments?postId=9247449d-235b-4805-94e5-e2d41fb44c29')
print('Muah')
# pprint.pprint(businesses, indent=2)
