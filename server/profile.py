from flask_restful import Resource, Api
from flask import request, jsonify
from prisma.models import Post
from prisma.client import Client
from datetime import datetime as dt


class Profile(Resource):
    def get(self):
        params = request.args.to_dict() or {}
        db = Client()
        db.connect()
        print(params)
        response = db.profile.find_many(
            where=params,
            # This is just a potential ting to count likes and posts
            include={
                'posts': True,
                'postLikes': True
            }
        )
        print(response)
        db.disconnect()
        return jsonify([res.__dict__ for res in response])
    
    # def post(self):
    #     data = request.json
    #     # params = ['email', 'name', 'public']
    #     db = Client()
    #     db.connect()
    #     response = db.profile.create(
    #         data=data
    #     )
    #     # try:
    #     db.disconnect()
    #     return
    #     return jsonify([res.__dict__ for res in response])
    
    def delete(self):
        params = request.args.to_dict()
        db = Client()
        db.connect()
        response = db.profile.delete(
            where = {
                'id': params.get('id')
            }
        )
        db.disconnect()
        return response
        