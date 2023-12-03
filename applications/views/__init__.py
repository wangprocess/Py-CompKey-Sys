from flask import Blueprint

view_blue = Blueprint('view', __name__)

from .view import *
