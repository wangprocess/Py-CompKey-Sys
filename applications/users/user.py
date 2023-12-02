from applications.users import user_blue
from models import UserModel
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import request

@user_blue.route('/getUser', methods=['GET'])
def get_user():
    print("getUser")
    return "getUser"

@user_blue.route('/login', methods=['POST'])
def login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        user = UserModel.query.filter_by(username=username).first()
        print(username)
        print(password)
        if user and user.password_hash == password:  # Replace with proper password hashing
            login_user(user)
            return "succuess"
    return  "fail"

