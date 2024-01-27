from flask import Flask, request, jsonify
from flask_restful import Resource, Api
from yelp_api import get_business, search
import posts
import profile
import restaurant
import follows
from collections import defaultdict
import os
# from prisma import Prisma, register

'''
Dont really know how to connect yet but placeholder innit
'''
# db = Prisma()
# db.connect()
# register(db)



app = Flask(__name__)
api = Api(app)


DEFAULT_RADIUS    = '20000'
DEFAULT_LATITUDE  = '51.509865'
DEFAULT_LONGITUDE = '-0.118092'

'''
Add latitude and longitude and radius if we want map selector like in TooGoodToGo
https://docs.developer.yelp.com/reference/v3_business_search
'''
params = ["latitude", "longitude", "radius", "term", "price", "open_now", "open_at",
          "attributes", "sort_by",
          "limit", "offset"]



class BusinessDetails(Resource):
    def get(self, business_id):
        response = get_business(business_id)
        return response

api.add_resource(BusinessDetails, '/details/<string:business_id>')

# https://docs.developer.yelp.com/reference/v3_business_search
class AllBusinesses(Resource):
    def get(self):
        params = request.args.to_dict()
        params.setdefault('latitude', DEFAULT_LATITUDE)
        params.setdefault('longitude', DEFAULT_LONGITUDE)
        params.setdefault('radius', DEFAULT_RADIUS)

        return search(params)

api.add_resource(AllBusinesses, '/businesses/')

api.add_resource(posts.Posts, '/posts/')
api.add_resource(profile.Profile, '/profile/')
api.add_resource(restaurant.Restaurant, '/restaurant/')
api.add_resource(follows.Follows, '/follows/<string:id>')
# api.add_resource(likes.Likes, '/likes/')

if __name__ == '__main__':
    app.run(debug=True)