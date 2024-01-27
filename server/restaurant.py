from flask_restful import Resource, Api
from flask import request, jsonify
from prisma.models import Post
from prisma.client import Client
from datetime import datetime as dt

class ParamsException():
    pass

class Restaurant(Resource):
    def get(self):
        user = request.args.to_dict().get('username')
        if user is None:
            raise ParamsException
        
        db = Client()
        db.connect()
        follow = db.profile.find_many(
            where={
                'username': user
            },
            include={
                'followsFollowing': True
            },
            select={
                'following': True
            }
        )
        print(follow)
        # [1,2,3,4,5]
        restaurants = db.post.find_many(
            where={
                'profileId': {
                    'in': follow
                }
            },
            select={
                'restaurantId': True
            }
        )
        print(restaurants)
        result = db.restaurant.find_many(
            where={
                'yelpId': {
                    'in': restaurants
                }
            }
        )
        db.disconnect()
        return result
        
    # def post(self):
    #     yelpId = request.args.to_dict()['yelpId']
    #     db = Client()
    #     db.connect()
    #     data = db.restaurant.find_unique(
    #         where={
    #             "yelpId": yelpId
    #         }
    #     )
        
    #     if data is not None:
    #         res = db.restaurant.create(
    #             data={}
    #         )
    #     db.disconnect()
    #     pass