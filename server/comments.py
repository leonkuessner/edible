from flask_restful import Resource
from flask import request
from prisma.client import Client

class Comments(Resource):
    def get(self):
        pass
    
    def post(self):
        data = request.json
        text = data.get('text')
        # params = ['text', 'parentId', 'postId', ]
        db = Client()
        db.connect()
        comment = db.comment.create(
            data={
                'message': text
            }
        )
        # if data.get('parentId') is not None:
        #     parent = db.comment.create(
                
        #     )
        
        
        db.disconnect()
        
        