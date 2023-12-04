from extensions import db
from datetime import datetime


class OssModel(db.Model):
    __tablename__ = 'oss'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='Oss对象的ID')
    name = db.Column(db.String(50), comment='图片名称')
    path = db.Column(db.String(255), comment='Oss的路径')
    detail = db.Column(db.String(255), comment='Oss对象的详细信息')
    create_time = db.Column(db.DateTime, default=datetime.now, comment='创建时间')

