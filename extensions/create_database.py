from flask import Flask


def create_database(app: Flask):
    """
    创建数据表的方法，自定义方法
    使用flask create-table在所连接的Mysql中创建表
    根据Models创建数据表
    """
    @app.cli.command()
    def create_table():
        """创建数据表"""
        from extensions import db

        db.create_all()
