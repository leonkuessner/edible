from flask_restful import Resource, Api
from flask import request, jsonify
from prisma.client import Client


class Likes(Resource):
    def get(self):
        return
    
    def post(self):
        params = request.args.to_dict()
        
        db = Client()
        db.connect()
        post = db.postlike.create(
            data = {
                'post': {
                    'connect': { 'id': params.get('postId') }
                },
                'profile': {
                    'connect': { 'id': params.get('userId') }
                }
            }
        )
        db.disconnect()
        print(post)
        return
        # return jsonify([res.model_dump(round_trip=True) for res in post])
        # response = db.postlike.count()
        # db.disconnect()
        # # return post
        # return jsonify([res.model_dump(round_trip=True) for res in response])
    def delete(self):
        params = request.args.to_dict()
        print(params)
        db = Client()
        db.connect()
        deleteLike = db.postlike.delete_many(
            where = {
                'AND': [
                    {'postId': params.get('postId')},
                    {'profileId': params.get('userId')}
                ]
            }
        )
        db.disconnect()
        return 
        