from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from settings import DevelopmentConfig, ProductionConfig
from extensions import init_plugs

from .words import compkey_blue
from .users import user_blue

config = {
    'dev': DevelopmentConfig,
    'prop': ProductionConfig
}

db = SQLAlchemy()
migrate = Migrate()

def create_app():
    app = Flask(__name__)

    app.register_blueprint(compkey_blue, url_prefix='/compkey')
    app.register_blueprint(user_blue, url_prefix='/user')

    Config = config['dev']


    # 读取配置文件
    app.config.from_object(Config)

    db.init_app(app)

    migrate.init_app(app, db)

    init_plugs(app)

    return app
