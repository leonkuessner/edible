from flask_restful import Resource, Api
from flask import request, jsonify
from prisma.models import Post
from prisma.client import Client
from datetime import datetime as dt

class Posts(Resource):
    def get(self):
        params = request.args.to_dict() or {}
        db = Client()
        db.connect()
        response = db.post.find_many(
            where = params,
            order = [
                {
                    'createdAt': 'desc'
                }
            ]
        )
        db.disconnect()
        return jsonify([res.__dict__ for res in response])
    
    def get_push_restaurant(self, params):
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
        return res
    
    def post(self):
        data = request.json
        print(data)
        response_keys = ['individual', 'review', 'rating', 'meal']
        db = Client()
        db.connect()
        new_restaurant = self.get_push_restaurant(data)
        print(new_restaurant)
        new_post = db.post.create(
            data={
                key: data.get(key) for key in response_keys if key in data
            } | {
                'restaurant': {
                    'connect': {'id': new_restaurant.id}
                }
            }
        )
        print(new_post)
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
            print(new_post_tag)
        # if data.get('imageUrl') is not None:
        new_post_image = db.postimage.create(
            data = {
                'post': {
                    'connect': { 'id': new_post.id }
                },
                'imageUrl': data['imageUrl']
            }
        )
        print(new_post_image)
        # if data.get('userId') is not None:
        db.profile.update(
            where = { 'id': data['userId'] },
            data = {
                'posts': {
                    'connect': { 'id': new_post.id }
                }
            }
        )
        # else:
        #     try:
        #         db.group.update(
        #             where = { 'id': data['userId'] },
        #             data = {
        #                 'posts': {
        #                     'connect': { 'id': new_post.id }
        #                 }
        #             } 
        #         )
        #     except Exception as e:
        #         print('Updating group failed: ', e)
        #         db.disconnect()
        #         return 

        response = db.post.find_many()
        print(response)
        db.disconnect()
        return {'1':1}
    
    def delete(self):
        params = request.args.to_dict()
        db = Client()
        db.connect()
        deleteUser = db.post.delete(
            where = {
                'id': params.get('id')
            }
        )
        db.disconnect()
        return deleteUser
    
    # def getProfile(self, username):
    #     db = Client()
    #     db.connect()
    #     response = db.profile.find_unique(
    #         where={'email': username},
    #         select={
    #             'id': True
    #         }
    #     )
    #     print(response)
    #     db.disconnect()
    #     return response
        
            
        # return
        
# class Follow(Resource):
#     def get(self):
#         fo

    
    