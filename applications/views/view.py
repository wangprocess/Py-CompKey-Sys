from applications.views import index_bp
from flask import Flask, render_template, request, redirect, url_for
from applications.users import *


@index_bp.route('/login', methods=['GET'])
def login_index():
    return render_template('new_login.html')


@index_bp.route('/')
def index_page():
    return render_template('index.html')


@index_bp.route('/details')
def detail_page():
    return render_template('topic-details.html')


@index_bp.route('/lists/<seedword>')
def list_page(seedword):
    return render_template('topic-listing.html', keyword=seedword)

@index_bp.route('/report')
def report_page():
    return render_template('keyword-report.html')
