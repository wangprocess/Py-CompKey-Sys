from applications.comments import comment_blue
from models import CommentModel
from flask import Flask, request, session, redirect, render_template
from extensions import db


@comment_blue.route('/comment')
def get_comment():

    return render_template('new_login.html')

