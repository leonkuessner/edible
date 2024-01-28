from flask_restful import Resource, Api
from flask import request, jsonify
from prisma.models import Post
from prisma.client import Client
from datetime import datetime as dt

class ParamsException():
    pass

class IndividualRestaurants(Resource):
    def get(self, user):
        
        db = Client()
        db.connect()
        response = db.post.find_many(
            where = {
                'id': user
            },
            include={
                'yelpId': True,
                'latitude': True,
                'longitude': True
            }
        )
        db.disconnect()
        print(response)
        return jsonify([res.model_dump(round_trip=True) for res in response])
        

class AllFollowingRestaurant(Resource):
    def get(self, user):
        '''
            Maybe change username to id?
        '''
        # user = request.args.to_dict().get('username')
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
