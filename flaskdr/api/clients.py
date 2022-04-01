from flask import Blueprint, jsonify, abort, request
from ..model import Appointment, Client,Contact_information,Pet,Veterinarian,client_pet,db

bp = Blueprint('clients', __name__, url_prefix='/clients')

@bp.route('', methods=['GET']) # decorator takes path and list of HTTP verbs
def index():
    clients=Client.query.all()
    result=[]
    for c in clients:
        result.append(c.serialize()) # build list of Tweets as dictionaries
    return jsonify(result) # return JSON response
@bp.route('/<int:id>', methods=['GET'])
def show(id: int):
    c = Client.query.get_or_404(id)
    return jsonify(c.serialize())

@bp.route('/<int:id>/information', methods=['GET'])
def contact_info(id:int):
    con = Contact_information.query.get_or_404(id)
    return jsonify(con.serialize())

@bp.route('/<int:id>', methods=['DELETE'])
def delete(id: int):
    c = Client.query.get_or_404(id)
    try:
        db.session.delete(c) # prepare DELETE statement
        db.session.commit() # execute DELETE statement
        return jsonify(True)
    except:
        # something went wrong :(
        return jsonify(False)

#@bp.route('/<int:id>', methods=['PATCH','PUT'])
#def update(id:int):

#@bp.route('/<int:id>/liked_tweets', methods=['GET'])
#def liked_tweets(id: int):



    
    

