from flask import Blueprint

index_bp = Blueprint('index_bp', __name__)

from .view import *
