from applications.users import user_blue
from models import UserModel
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session
from extensions.init_login import *
app = Flask(__name__)

@user_blue.route('/getUser', methods=['GET'])
def get_user():
    print("getUser")
    return "getUser"


@user_blue.route('/login', methods=['POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        from models import UserModel
        user = UserModel.query.filter_by(username=username).first()
        # user = load_user(username)
        print(user)
        if user and user.password_hash == password:  # Replace with proper password hashing
            login_user(user)
            session['user_id'] = user.id
            return f'Current User: {current_user.username}'
    return "fail"
