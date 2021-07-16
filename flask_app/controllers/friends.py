from flask_app import app
from flask import render_template, redirect, session, request

from flask_app.models.friends import Friend

@app.route('/')
def index():
    friends = Friend.get_all()
    return render_template('index.html', friends = friends)

@app.route('/friends/create', methods=['POST'])
def create_friend():
    data = {
        'first_name': request.form['first_name'],
        'occupation': request.form['occupation']
    }
    Friend.create_friend(data)
    return redirect('/')

@app.route('/friends/<int:friend_id>/delete')
def delete_friend(friend_id):
    data = {
        'id': friend_id
    }
    Friend.delete_friend(data)
    return redirect('/')

