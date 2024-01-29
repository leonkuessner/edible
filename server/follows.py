from flask_restful import Resource, Api
from flask import request, jsonify
from prisma.models import Post
from prisma.client import Client
from datetime import datetime as dt

class Follows(Resource):
    def get(self, user):
        db = Client()
        db.connect()
        following = db.follow.count(
            where={
                'followingId': user
            }
        )
        followed = db.follow.count(
            where={
                'followedId': user
            }
        )
        db.disconnect()
        return {'following': following, 'followed': followed}
    
    def delete(self, id1):
        id2 = request.args.to_dict()['unfollowed_id']
        db = Client()
        db.connect()
        response = db.follow.delete(
            where = {
                'followingId': id1,
                'followedId': id2
            }
        )
        db.disconnect()
        pass