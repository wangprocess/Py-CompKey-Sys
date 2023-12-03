from flask import Blueprint

view_blue = Blueprint('view', __name__)

from . import index
