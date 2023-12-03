from applications.views import index_bp
from flask import Flask, render_template, request, redirect, url_for
from applications.users import *

@index_bp.route('/login', methods=['GET'])
def login_index():
    return render_template('new_login.html')


