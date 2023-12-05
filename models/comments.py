from extensions import db
from datetime import datetime


class CommentModel(db.Model):
    __tablename__ = "comment"  # 表名称
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='标识')  # 主键
    user_id = db.Column(db.Integer, db.ForeignKey("user.id"), comment='用户的ID')  # 属性 外键
    seedword_id = db.Column(db.Integer, db.ForeignKey("seedword.id"), comment='种子关键词编号')
    compword_id = db.Column(db.Integer, db.ForeignKey("compword.id"), comment='竞争关键词编号')  # 属性 外键
    text = db.Column(db.String(255), comment='评论的内容')
    score = db.Column(db.Float, comment='所评的分数')
    like = db.Column(db.Integer, comment='点赞数')
    create_time = db.Column(db.DateTime, default=datetime.now, comment='创建时间')

