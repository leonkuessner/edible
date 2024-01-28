from flask_restful import Resource
from flask import request, jsonify
from prisma.client import Client

class Comments(Resource):
    def get(self):
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
        print(response)
        db.disconnect()
        return jsonify([res.model_dump(round_trip=True) for res in response])
        
    
    def post(self):
        print(request.data)
        data = request.json
        print(data)
        text = data.get('text')
        postId = data.get('postId')
        userId = data.get('userId')
        
        if any([x is None for x in [text, postId, userId]]):
            return {'Error': 'Incorrect data supplied. [text, postId, userId] must be populated'}, 400
        # params = ['text', 'parentId', 'postId', ]
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
        
        # response = db.comment.find_many(
        #     data = {
        #         'postId': postId
        #     },
        #     include = {
        #         'replies': True,
        #         'likes': True,
        #         'parent': True,
        #         'profile': True,
        #         'createdAt': True
        #     }
        # )
        # print(response)
        db.disconnect()
        return
        # return jsonify([res.model_dump(round_trip=True) for res in response])
    
    def delete(self):
        id = request.args.to_dict().get('id')
        
        db = Client()
        db.connect()
        deleteComment = db.comment.delete(
            where = {
                'id': id
            }
        )
        db.disconnect()
        return
        
        
        