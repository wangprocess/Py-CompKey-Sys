from applications import db
from datetime import datetime


class UserModel(db.Model):
    __tablename__ = 'user'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='用户的ID')
    username = db.Column(db.String(20), comment='用户名')
    password_hash = db.Column(db.String(128), comment='哈希密码')
    role = db.Column(db.Integer, comment='用户角色，0-管理员，1-普通用户，2-VIP用户')
    telephone = db.Column(db.String(11), comment='电话号码')
    avatar = db.Column(db.String(255), comment='头像', default="/static/admin/admin/images/avatar.jpg")
    email = db.Column(db.String(20), comment='邮箱')
    create_time = db.Column(db.DateTime, default=datetime.now, comment='创建时间')
    update_time = db.Column(db.DateTime, default=datetime.now, comment='更新时间')
