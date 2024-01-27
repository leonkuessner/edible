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
                    'latitude': 'latitude',
                    'longitude': 'longitude'
                }
            )
        return res
    
    def post(self):
        data = request.json
        print(data)
        response_keys = ['individual', 'review', 'rating']
        vars = {key: data.get(key) for key in response_keys if key in data}
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
        # if data['postTag'] is not None:
        #     new_post_tag = db.posttag.create(
        #         data = {
        #             'post': {
        #                 'connect': { 'id': new_post.id }
        #             },
        #             'profile': {
        #                 'connect': { 'id': data['id'] }
        #             }
        #         }
        #     )
        # new_post_image = db.postimage.create({
        #     data: {
        #         'post': {
        #             'connect': { 'id': new_post.id }
        #         },
        #         'imageUrl': { 'id': new_post.id }
        #     }
        # })
        # db.profile.update(
        #     where = { 'id': data['id'] },
        #     data = {
        #         'post': {
        #             'connect': { 'id': new_post.id}
        #         }
        #     }
        # )
        
        
        
        # response = db.post.create(
        #     data=[data.get(x) for x in response_keys if x in data]
        # )
        # try:
        #     for img in data.get('imageUrl'):
        #         image = db.postimage.create({
        #             'content': img,
        #             'post': {
        #                 'connect': {
        #                     'id': response.id
        #                 }
        #             }
        #         })
        # except TypeError:
        #     print('Image not available')
        # try:
        #     for t in data.get('postTag'):
        #         tag = db.posttag.create({
        #             'post': {
        #                 'connect': {
        #                     'id': response.id
        #                 }
        #             },
        #             'profile': {
        #                 'connect': {
        #                     'id': self.getProfile(t)['id']
        #                 }
        #             }
        #         })
        # except TypeError:
        #     print('Post Tags not available')
            
        # # try:
        # #     data = db.restaurant.find_unique(
        # #         where={
        # #             "yelpId": data.get('yelpId')
        # #         }
        # #     )
        # #     if not data:
        # #         res = db.restaurant.create(
        # #             content={
        # #                 'yelpId': data.get('yelpId'),
        # #                 'latitude': data.get('latitude'),
        # #                 'longitude': data.get('longitude'),
        # #             }
        # #         )
        # #     else:
        # #         print("restaurant already exists in table")
        # # except Exception as e:
        # #     print(e)
        response = db.post.find_many()
        # # print(jsonify([res.__dict__ for res in response]))
        print(response)
        db.disconnect()
        # print(new_post_image)
        # print(new_post_tag)
        print(new_post)
        print(new_restaurant)
        # return jsonify([res.__dict__ for res in response])
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
    
    def getProfile(self, username):
        db = Client()
        db.connect()
        response = db.profile.find_unique(
            where={'email': username},
            select={
                'id': True
            }
        )
        print(response)
        db.disconnect()
        return response
        
            
        # return
        
# class Follow(Resource):
#     def get(self):
#         fo

    
    