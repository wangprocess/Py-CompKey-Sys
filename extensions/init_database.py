from flask import Flask


def init_database(app: Flask):
    @app.cli.command()
    def create_database():
        """清空数据库"""
        from applications import db
        db.drop_all()
        db.create_all()
