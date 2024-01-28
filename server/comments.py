from flask_restful import Resource
from flask import request, jsonify, abort
from prisma.client import Client

class Comments(Resource):
    def get(self):
        try:
            postId = request.args.to_dict().get("postId")
            
            db = Client()
            db.connect()
            response = db.comment.find_many(
                where = {
                    'postId': postId
                },
                include = {
                    'replies': True,
                    'likes': True,
                    'parent': True,
                    'profile': True
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return jsonify([res.model_dump(round_trip=True) for res in response])
        
    
    def post(self):
        try:
            data = request.json
            text = data.get('text')
            postId = data.get('postId')
            userId = data.get('userId')
            
            if any([x is None for x in [text, postId, userId]]):
                return {'Error': 'Incorrect data supplied. [text, postId, userId] must be populated'}, 400
            db = Client()
            db.connect()
            new_comment = db.comment.create(
                data={
                    "message": text,
                    "postId": postId,
                    "profileId": userId,
                }
            )

            updated_post = db.post.update(
                where={"id": postId},
                data={
                    "comments": {
                        "connect": {"id": new_comment.id},
                    },
                },
            )
            updated_profile = db.profile.update(
                where={"id": userId},
                data={
                    "comments": {
                        "connect": {"id": new_comment.id},
                    },
                },
            )
        
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return
    
    def delete(self):
        try:
            id = request.args.to_dict().get('id')
            
            db = Client()
            db.connect()
            deleteComment = db.comment.delete(
                where = {
                    'id': id
                }
            )
            db.disconnect()
        except Exception as e:
            db.disconnect()
            abort(400, e)
        return
        
        
        