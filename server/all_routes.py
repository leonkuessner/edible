from requests import put, get, post, delete
import json
from prisma.enums import MealType

'''
GET REQUESTS:
'''

###### YELP API
# Get ids and locations of businesses based on latitude, longitude and radius.
# Check https://docs.developer.yelp.com/reference/v3_business_search for params and update yelp_api
y1 = get('http://localhost:8000/businesses?latitude=51.509865&longitude=-0.118092&radius=10000&term=breakfast,dinner&price=2&limit=3')

# Get business deltails for a SINGLE BUSINESS, yelpId as additional param
y2 = get("http://localhost:8000/details/R1UKQHTz65dQKkdLjzVEBg")


####### DB API
# Get all profiles:
g1 = get('http://localhost:8000/profile/')
# Get all profiles with a specific filter:
g2 = get('http://localhost:8000/profile?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4&email=leonkuessner1@gmail.com')

print([g1, g2])
# Get all posts - ordered by createdAt
g3 = get('http://localhost:8000/posts/')
# Get all posts with specific filter
g4 = get('http://localhost:8000/posts?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')

# Get number of followers and followings
g5 = get('http://localhost:8000/follows/5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')

# Get comments for a post
g6 = get('http://localhost:8000/comments?postId=9247449d-235b-4805-94e5-e2d41fb44c29')

# Get likes
g7 = get('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29&userId=5442b175-1f99-4d24-9a32-e698f38083d7')

g8 = get('http://localhost:8000/profile?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')

g9 = get('http://localhost:8000/individual-restaurant?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')

g10 = get('http://localhost:8000/all-following-restaurant?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')
'''
DELETES
'''
d1 = delete("http://localhost:8000/posts?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4")

# Delete Comment
d2 = delete('http://localhost:8000/comments?id=1e3e29ba-935a-425a-914b-7d32d8e5c3fc')

# delete follows
d3 = delete('http://localhost:8000/follows/5b79591c-52d0-45c0-8a20-06e6cdcbd9b4?id2=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')

# delete likes
d4 = delete('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29&userId=5442b175-1f99-4d24-9a32-e698f38083d7')

d5 = delete('http://localhost:8000/profile?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4')
'''POST'''
p1 = post('http://localhost:8000/posts/', data=json.dumps({'email': 'vkrice2475@gmail.com', 
                                                            'userId': '45365e61-1907-4331-8fe6-d84d11ac3fda',
                                                            'individual': True, 
                                                            'restaurantId': 'se61yyYAHdKZ_Fq9ygXjVg', 
                                                            'review': 'Big Munch', 
                                                            'rating': 4, 
                                                            'name': 'MunchMunch',
                                                            'meal': MealType.BREAKFAST,
                                                            'imageUrl': 'https://s3-media2.fl.yelpcdn.com/bphoto/YWWcF_UIra5KEaFkdgXB6g/o.jpg',
                                                            'latitude': '51.509865',
                                                            'longitude': '-0.118092',
                                                            'userId':  '45365e61-1907-4331-8fe6-d84d11ac3fda'
                                                            }), 
           headers={'Content-Type': 'application/json'})

# Add comments to a post
p2 = post('http://localhost:8000/comments/', 
           data=json.dumps({'text': "My First Comment", 
                            'userId': '5442b175-1f99-4d24-9a32-e698f38083d7', 
                            'postId': '9247449d-235b-4805-94e5-e2d41fb44c29'}),
           headers={'Content-Type': 'application/json'}
        )

# Add like
p3 = post('http://localhost:8000/likes?postId=9247449d-235b-4805-94e5-e2d41fb44c29&userId=5442b175-1f99-4d24-9a32-e698f38083d7')

