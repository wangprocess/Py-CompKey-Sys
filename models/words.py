from extensions import db


# 创建种子关键词得到竞争关键词所用的中介关键词的中间表
# 是seedword_compword表和agencyword的中间表
used_agencyword = db.Table(
    "used_agencyword",  # 中间表名称
    db.Column("id", db.Integer, primary_key=True, autoincrement=True, comment='标识'),  # 主键
    db.Column("seedword_compword_id", db.Integer, db.ForeignKey("seedword_compword.id"),
              comment='种子关键词和一个竞争关键词的id，seedword_compword表的id'),  # 属性 外键
    db.Column("agencyword_id", db.Integer, db.ForeignKey("agencyword.id"), comment='中介关键词编号'),  # 属性 外键
)


# 创建种子关键词对应的竞争性关键词的中介表
class SeedwordCompword(db.Model):
    __tablename__ = "seedword_compword"  # 中间表名称
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='标识')  # 主键
    seedword_id = db.Column(db.Integer, db.ForeignKey("seedword.id"), comment='种子关键词编号')  # 属性 外键
    compword_id = db.Column(db.Integer, db.ForeignKey("compword.id"), comment='竞争关键词编号')  # 属性 外键
    comp_value = db.Column(db.Float, comment='竞争度的值，comp值')
    compword = db.relationship("CompWordModel")
    agencywords = db.relationship('AgencyWordModel', secondary="used_agencyword")


class SeedWordModel(db.Model):
    __tablename__ = 'seedword'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='种子关键词的ID')
    word = db.Column(db.String(20), comment='种子关键词名称')
    num = db.Column(db.Integer, comment='被搜索的次数', default=0)
    compwords = db.relationship('SeedwordCompword')


class CompWordModel(db.Model):
    __tablename__ = 'compword'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='种子关键词的ID')
    word = db.Column(db.String(20), comment='竞争关键词名称')


class AgencyWordModel(db.Model):
    __tablename__ = 'agencyword'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True, comment='种子关键词的ID')
    word = db.Column(db.String(20), comment='中介关键词名称')
