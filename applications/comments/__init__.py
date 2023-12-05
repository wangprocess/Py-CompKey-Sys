from flask import Blueprint

comment_blue = Blueprint('comment', __name__)

from .comment import *
