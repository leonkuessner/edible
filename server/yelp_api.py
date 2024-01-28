from __future__ import print_function

import pprint
import requests
from urllib.parse import quote
import pydash


API_KEY= 'x97eD7KK0A1KgmzDQgnEfMAR7FdEDhqyvw_QcWfo_TsoFlyzZvujR6B-zCFgQMPVU9Ymqj9kKiUkVw-JXOeqfYodNaXDpoz9lYHFHJJAQ3L8N0IYNIJ3YxQLSyGwZXYx'

API_HOST = 'https://api.yelp.com'
SEARCH_PATH = '/v3/businesses/search'
BUSINESS_PATH = '/v3/businesses/'


SEARCH_LIMIT = 50



def request(host, path, api_key, url_params=None):
    url_params = url_params or {}
    url = f"{host}{quote(path.encode('utf8'))}"
    headers = {
        'Authorization': 'Bearer ' + api_key
    }

    print(u'Querying {0} ...'.format(url))

    response = requests.request('GET', url, headers=headers, params=url_params)

    return response.json()


def search_url(params):
    '''
    Args:
        params: All the commands from the GET request
    Returns: A filtered json for BASIC data
    '''
    print("y")
    url_params = {key: value.replace(' ', '+') for key, value in params.items()}
    url_params.setdefault('limit', SEARCH_LIMIT)
    x = request(API_HOST, SEARCH_PATH, API_KEY, url_params=url_params)
    return x



def search(params):
    res = search_url(params)['businesses']
    '''
    Filtering to be done, lets clear it up later
    '''
    keys = ['coordinates', 'id']


    # return [{key: value for key, value in d.items() if key in keys} for d in res]
    return [{key: pydash.get(d, key) for key in keys} for d in res]

def get_business(business_id):
    '''
    Args:
        business_id: For lookups from databases and onClick actions
            e.g. tYynO1nOy1GKxMV3jkxbmw

    Returns: Filtered but much more detailled json

    '''
    business_path = BUSINESS_PATH + business_id
    res = request(API_HOST, business_path, API_KEY)
    keys = ['id', 'name', 'price', 'rating', 'review_count', 'coordinates', 'is_closed', 'location.display_address', 'phone', 'image_url']
    '''Do some stuff lets clear it up tmr'''


    return {key: pydash.get(res, key) for key in keys}
    # return res

def search(params):
    
    res = search_url(params)['businesses']
    print(res)
    '''
    Filtering to be done, lets clear it up later
    '''
    keys = ['coordinates', 'id']
    # return [{key: value for key, value in d.items() if key in keys} for d in res]
    return res

def main():
    pass

if __name__ == '__main__':
    main()
