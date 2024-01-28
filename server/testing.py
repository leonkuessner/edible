from requests import put, get, post
import pprint
import json
from datetime import datetime as dt


'''
Calls take way too long - need a way to improve
'''
# res = get('http://localhost:5000/businesses?latitude=51.509865&longitude=-0.118092&radius=10000&term=breakfast,dinner&price=2&limit=3')

# content = json.loads(res.content.decode('utf-8'))

# businesses = [get(f"http://localhost:5000/details/{b['id']}") for b in content]
profiles = get('http://localhost:5000/profile')
# profile = post('http://localhost:5000/profile/', data=json.dumps({'email': 'leonkuessner3@gmail.com', 'username': 'MunchMunch', 'public': True}), headers={'Content-Type': 'application/json'})
# for i in range(2):
# db1 = post('http://localhost:5000/posts/', data=json.dumps({'email': f'leonkuessner3{1}@gmail.com', 
#                                                             'individual': True, 
#                                                             'restaurantId': 'se61yyYAHdKZ_Fq9ygXjVg', 
#                                                             'review': 'Big Munch', 
#                                                             'rating': 4, 
#                                                             'imageUrl': 'https://s3-media2.fl.yelpcdn.com/bphoto/YWWcF_UIra5KEaFkdgXB6g/o.jpg',
#                                                             'latitude': '51.509865',
#                                                             'longitude': '-0.118092',
#                                                             'userId': 'sdgfsdfsdgfsd'
#                                                             }), 
#         headers={'Content-Type': 'application/json'})

# db2 = get('http://localhost:5000/posts/')
# db3 = get('http://localhost:5000/profile/')
# db4 = get('http://localhost:5000/follows/5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')
print('rawr')
# pprint.pprint(businesses, indent=2)