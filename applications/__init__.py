import os.path
import secrets

from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from settings import DevelopmentConfig, ProductionConfig
from extensions import init_plugs
import os

config = {
    'dev': DevelopmentConfig,
    'prop': ProductionConfig
}


def create_app():
    app = Flask(__name__)

    app.config['SECRET_KEY'] = secrets.token_hex(16)
    Config = config['dev']

    # 读取配置文件
    app.config.from_object(Config)
    app.template_folder = os.path.abspath('templates')
    app.static_folder = os.path.abspath('static')

    # 初始化各种插件，包括db、SQLAlchemy和Migrate
    init_plugs(app)

    from .words import compkey_blue
    from .users import user_blue
    from .views import index_bp

    import models
    # 注册蓝图
    app.register_blueprint(compkey_blue, url_prefix='/compkey')
    app.register_blueprint(user_blue, url_prefix='/user')
    app.register_blueprint(index_bp, url_prefix='/')

    return app
