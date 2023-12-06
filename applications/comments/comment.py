from applications.comments import comment_blue
from models import CommentModel, SeedWordModel, CompWordModel, UserModel, SeedwordCompword
from flask import Flask, request, session, redirect, render_template
from extensions import db
from utils import success_api, fail_api, data_api


@comment_blue.route('/getComment')
def get_comment():
    return render_template('new_login.html')


@comment_blue.route('/addComment', methods=['POST'])
def add_comment():
    userid = request.form['userid']
    text = request.form['text']
    seedword = request.form['seedword']
    seedword_id = SeedWordModel.query.filter_by(word=seedword).first().id
    compword = request.form['compword']
    compword_id = CompWordModel.query.filter_by(word=compword).first().id
    score = request.form['score']

    comment_model = CommentModel()
    comment_model.user_id = userid
    comment_model.text = text
    comment_model.seedword_id = seedword_id
    comment_model.compword_id = compword_id
    comment_model.score = score
    comment_model.like = 0
    db.session.add(comment_model)
    db.session.commit()

    if compword_id:
        comment_models = CommentModel.query.filter_by(seedword_id=seedword_id, compword_id=compword_id).all()
        average_score = sum(comment_model.score for comment_model in comment_models) / len(comment_models)
        middle = SeedwordCompword.query.filter_by(seedword_id=seedword_id, compword_id=compword_id).first()
        middle.grade = average_score
        db.session.commit()

    else:
        comment_models = CommentModel.query.filter_by(seedword_id=seedword_id, compword_id=compword_id).all()
        average_score = sum(comment_model.score for comment_model in comment_models) / len(comment_models)
        seedword_model = SeedWordModel.query.filter_by(word=seedword).first()
        seedword_model.grade = average_score
        db.session.commit()

    return success_api("新增成功")
