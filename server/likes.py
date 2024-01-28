from flask_restful import Resource, Api
from flask import request, jsonify, abort
from prisma.client import Client


class Likes(Resource):
    def get(self):
        try:
            id = request.args.to_dict().get('postId')
            db = Client()
            db.connect()
            response = db.postlike.count(
                where={
                    'postId': id
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return {'like_count': response}
    
    def post(self):
        try:
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
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return
    
    def delete(self):
        try:
            params = request.args.to_dict()
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
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return 
        