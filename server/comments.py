from flask_restful import Resource
from flask import request, jsonify
from prisma.client import Client

class Comments(Resource):
    def get(self):
        pass
    
    def post(self):
        data = request.json
        text = data.get('text')
        postId = data.get('postId')
        userId = data.get('userId')
        
        if all([x is not None for x in [text, postId, userId]]):
            return jsonify({'Error': 'Incorrect data supplied. [text, postId, userId] must be populated'}), 400
        # params = ['text', 'parentId', 'postId', ]
        db = Client()
        db.connect()
        new_comment = db.comment.create(
            data={
                'message': text
            }
        )
        if data.get('parentId') is not None:
            parent = db.comment.create(
                data = {
                    'comment': {
                        'connect': { 'id': new_comment.id }
                    }
                }
            )
        post_rel = db.post.create(
            data = {
                'post': {
                    'connect': { 'id': postId }
                }
            }
        )
        profile_rel = db.profile.create(
            data = {
                'profile': {
                    'connect': { 'id': userId }
                }
            }
        )
        db.disconnect()
        return
        
        