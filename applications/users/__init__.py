from flask import Blueprint

user_blue = Blueprint('user', __name__)

from .user import *
