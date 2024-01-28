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
                    'restaurant': True
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
            # if user is None:
            #     raise ParamsException
            
            db = Client()
            db.connect()
            follow = db.profile.find_many(
                where={
                    'id': user
                },
                include={
                    'followsFollowing': {
                        'include': {
                            'following': True
                        }
                    }
                },
            )
            # follow = db.profile.select(where={'id': user}).followsFollowing()
            follows = sum([x.followsFollowing for x in follow], [])
            restaurants = db.post.find_many(
                where={
                    'profileId': {
                        'in': [x.following.id for x in follows]
                    }
                },
            )
            result = db.restaurant.find_many(
                where={
                    'yelpId': {
                        'in': [x.restaurantId for x in restaurants]
                    }
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return jsonify([res.model_dump(round_trip=True) for res in result])