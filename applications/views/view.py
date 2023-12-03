# 开发者：Chen
# 开发时间：2023/12/2 20:44

from flask import Blueprint, render_template

from applications.views import view_blue

import os


@view_blue.route('/')
def index_page():
    return render_template('index.html')

@view_blue.route('/details')
def detail_page():
    return render_template('topic-details.html')

@view_blue.route('/lists')
def list_page():
    return render_template('topic-listing.html')
