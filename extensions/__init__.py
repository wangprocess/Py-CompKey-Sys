from flask import Flask

from .create_database import create_database
from .init_sqlalchemy import db, init_databases
from .init_login import init_login_manager


def init_plugs(app: Flask):
    init_login_manager(app)
    init_databases(app)
    create_database(app)
