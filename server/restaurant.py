from flask_restful import Resource, Api
from flask import request, jsonify, abort
from prisma.models import Post
from prisma.client import Client
from datetime import datetime as dt

class ParamsException():
    pass

class IndividualRestaurants(Resource):
    def get(self, user):
        try:
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
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return jsonify([res.model_dump(round_trip=True) for res in response])
        

class AllFollowingRestaurant(Resource):
    def get(self, user):
        try:
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
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return result
