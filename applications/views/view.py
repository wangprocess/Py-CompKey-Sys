from applications.views import index_bp
from flask import Flask, render_template, request, redirect, url_for
from applications.users import *


@index_bp.route('/login')
def login_index():
    return render_template('new_login.html')


@index_bp.route('/register')
def register_index():
    return render_template('register.html')


@index_bp.route('/')
def index_page():
    return render_template('index.html')


@index_bp.route('/details')
def detail_page():
    return render_template('topic-details.html')


# @index_bp.route('/lists')
# def list_page():
#     return render_template('topic-listing.html')

@index_bp.route('/report', methods=['GET'])
def report_page():
    seedword = request.args.get('seedword')
    compword = request.args.get('compword')
    # 在这里可以使用 seedword 和 compword 进行相应的处理
    return render_template('keyword-report.html', seedword=seedword, compword=compword)


@index_bp.route('/vip')
def vip_page():
    return render_template('vip-confirm.html')
