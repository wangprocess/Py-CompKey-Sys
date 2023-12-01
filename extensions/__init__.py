from flask import Flask

from .init_database import init_database


def init_plugs(app: Flask):
    init_database(app)
