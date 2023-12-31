from applications.users import user_blue
from models import UserModel
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect, url_for
from extensions import db



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

        if user and user.password_hash == password:  # Replace with proper password hashing
            login_user(user)
            session['user_id'] = user.id
            session['username'] = user.username
            session['role'] = user.role

            # 从前端隐藏的input中获取上一个页面的 URL
            previous_page = request.form.get('referrer')
            # 如果上一个页面是登录页面，则重定向到默认页面
            if previous_page and 'login' not in previous_page:
                return redirect(previous_page)  # 重定向到上一个页面
            else:
                return redirect('/')  # 替换为你的默认页面的路由名称

    return "fail"


@user_blue.route('/register', methods=['POST'])
def register():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']
        telephone = request.form['telephone']

        from models import UserModel
        user = UserModel()
        user.username = username
        user.password_hash = password
        user.role = 0
        user.email = email
        user.telephone = telephone

        if user.username and user.password_hash and user.email and user.telephone :
            db.session.add(user)
            db.session.commit()
            print(user.username)
            print("注册成功！")
            return redirect('/login')
        print("注册失败！")
    return redirect('/register')

@user_blue.route('/vip', methods=['GET'])
def vip():
    if session['username'] and session['role'] == 0:
        username = session['username']
        user = UserModel.query.filter_by(username=username).first()
        if user:
            # 更新用户的权限为 VIP（假设 VIP 对应的是 1）
            user.role = 1
            # 提交事务
            db.session.commit()
            session['role'] = user.role
            print("用户权限已更新为 VIP")
            return redirect('/')
        else:
            print("用户不存在")
            return "failure"
