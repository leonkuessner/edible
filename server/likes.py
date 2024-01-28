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
                    'connect': { 'id': params.get('profileId') }
                }
            }
        )
        db.disconnect()
        return post
        
        