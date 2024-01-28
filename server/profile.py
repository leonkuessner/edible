from flask_restful import Resource, Api
from flask import request, jsonify, abort
from prisma.client import Client


class Profile(Resource):
    def get(self):
        try:
            params = request.args.to_dict() or {}
            db = Client()
            db.connect()
            response = db.profile.find_many(
                where=params,
                include={
                    'posts': True,
                    'postLikes': True,
                    'posts': {
                        'include': {
                            'restaurant': True
                        }
                    }
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return jsonify([res.model_dump(round_trip=True) for res in response])
    
    def delete(self):
        try:
            params = request.args.to_dict()
            db = Client()
            db.connect()
            response = db.profile.delete(
                where = {
                    'id': params.get('id')
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return
        