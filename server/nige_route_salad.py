from requests import put, get, post, delete
import json

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


'''
DELETES
'''
d1 = delete("http://localhost:8000/posts?id=5b79591c-52d0-45c0-8a20-06e6cdcbd9b4")

print([g1, g2, g3, g4, g5, y1, y2, d1])


'''
POSTS
'''
db1 = post('http://localhost:5000/posts/', 
           data=json.dumps({
            #    'email': 'leonkuessner3@gmail.com', 
                'individual': True, 
                'restaurantId': 'se61yyYAHdKZ_Fq9ygXjVg', 
                'meal': 'dinner',
                'review': 'Big Munch', 
                'rating': 4, 
                'imageUrl': 'https://s3-media2.fl.yelpcdn.com/bphoto/YWWcF_UIra5KEaFkdgXB6g/o.jpg',
            'latitude': '51.509865',
                'longitude': '-0.118092',
                'userId': '34ae0069-6ea7-45ed-8b59-5673976fa4bd' 
            }), 
            headers={'Content-Type': 'application/json'})
