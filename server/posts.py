from flask_restful import Resource, Api
from flask import request, jsonify, abort
from prisma.models import Post
from prisma.client import Client
import json
from datetime import datetime as dt
import pydantic

class Posts(Resource):
    def get(self):
        try:
            params = request.args.to_dict() or {}
            db = Client()
            db.connect()
            response = db.post.find_many(
                where = params,
                order = [
                    {
                        'createdAt': 'desc'
                    }
                ], 
                include = {
                    'postImages': True,
                    'comments': True,
                    'profile': True,
                    'restaurant': True
                }
            )
            db.disconnect()
            if response is None:
                return {}
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return jsonify([res.model_dump(round_trip=True) for res in response])
    
    def get_push_restaurant(self, params):
        try:
            db = Client()
            db.connect()

            res = db.restaurant.find_unique(
                where = {'yelpId': params['restaurantId']}
            )
            if res is None:
                res = db.restaurant.create(
                    data = {
                        'yelpId': params['restaurantId'],
                        'latitude': params['latitude'],
                        'longitude': params['longitude'],
                        'name': params['name']
                    }
                )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return res
    
    def post(self):
        try:
            data = request.json
            response_keys = ['individual', 'review', 'rating', 'meal']
            db = Client()
            db.connect()
            new_restaurant = self.get_push_restaurant(data)
            new_post = db.post.create(
                data={
                    key: data.get(key) for key in response_keys if key in data
                } | {
                    'restaurant': {
                        'connect': {'id': new_restaurant.id}
                    }
                }
            )
            if data.get('postTag') is not None:
                new_post_tag = db.posttag.create(
                    data = {
                        'post': {
                            'connect': { 'id': new_post.id }
                        },
                        'profile': {
                            'connect': { 'id': new_post.id }
                        }
                    }
                )
            if data.get('imageUrl') is not None:
                new_post_image = db.postimage.create(
                    data = {
                        'post': {
                            'connect': { 'id': new_post.id }
                        },
                        'imageUrl': data['imageUrl']
                    }
                )
            
            if data.get('userId') is not None:
                db.profile.update(
                    where = { 'id': data['userId'] },
                    data = {
                        'posts': {
                            'connect': { 'id': new_post.id }
                        }
                    }
                )
            else:
                try:
                    db.group.update(
                        where = { 'id': data['userId'] },
                        data = {
                            'posts': {
                                'connect': { 'id': new_post.id }
                            }
                        } 
                    )
                except Exception as e:
                    print('Updating group failed: ', e)
                    db.disconnect()
                    abort(400, "Updating group failed")
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return
    
    def delete(self):
        try:
            params = request.args.to_dict()
            db = Client()
            db.connect()
            deleteUser = db.post.delete(
                where = {
                    'id': params.get('id')
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return
        
