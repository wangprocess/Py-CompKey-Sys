from flask import Flask

from .create_database import create_database
from .init_sqlalchemy import db, init_databases


def init_plugs(app: Flask):
    init_databases(app)
    create_database(app)
