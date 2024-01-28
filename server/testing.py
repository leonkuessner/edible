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
# db1 = post('http://localhost:8000/posts/', data=json.dumps({'email': 'ayaanmather561@gmail.com', 
#                                                             'userId': '04b6bfb9-437f-4e64-9633-9c0d226a3e49',
#                                                             'individual': True, 
#                                                             'restaurantId': 'se61yyYAHdKZ_Fq9ygXjVg', 
#                                                             'review': 'Epic meal!!! >:3', 
#                                                             'rating': 5, 
#                                                             'name': 'MunchMunch',
#                                                             'meal': MealType.DINNER,
#                                                             'imageUrl': 'https://feedgrump.com/wp-content/uploads/2023/05/hawaii-chicken-katsu-curry-plating-feature.jpg',
#                                                             'latitude': '51.509865',
#                                                             'longitude': '-0.118092',
#                                                             }), 
#            headers={'Content-Type': 'application/json'})

# db2 = get('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29')
# db3 = delete('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29&userId=5442b175-1f99-4d24-9a32-e698f38083d7')
# db4 = get('http://localhost:8000/follows/5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')
print('rawr')
# pprint.pprint(businesses, indent=2)
