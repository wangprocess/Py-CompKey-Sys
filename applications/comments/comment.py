from sqlalchemy import desc

from applications.comments import comment_blue
from models import CommentModel, SeedWordModel, CompWordModel, UserModel, SeedwordCompword
from flask import Flask, request, session, redirect, render_template
from extensions import db
from utils import success_api, fail_api, data_api


@comment_blue.route('/getComment', methods=['GET'])
def get_comment():
    if 'user_id' in session and session['user_id']:
        user_id = session['user_id']
        user_model = UserModel.query.filter_by(id=user_id).first()
        comment_liked_ids = [comment.id for comment in user_model.comment_liked]  # 获取用户点赞过的所有评论的ID
    else:
        comment_liked_ids = []     # 用户没登录的话，点赞过的评论为空
    seedword = request.args.get('seedword')
    seedword_id = SeedWordModel.query.filter_by(word=seedword).first().id
    compword = request.args.get('compword')
    if compword:
        compword_id = CompWordModel.query.filter_by(word=compword).first().id
    else:
        compword_id = None
    comment_models = CommentModel.query.filter_by(seedword_id=seedword_id, compword_id=compword_id).order_by(desc(CommentModel.like))
    count = 0
    result = {}
    for comment_model in comment_models:
        if comment_model.text:
            count += 1
            user_model = UserModel.query.filter_by(id=comment_model.user_id).first()
            if comment_model.id in comment_liked_ids:
                like_or_not = True
            else:
                like_or_not = False
            result['comment'+str(count)] = {
                'id': comment_model.id,
                'text': comment_model.text,
                'like': comment_model.like,
                'score': comment_model.score,
                'username': user_model.username,
                'avatar': user_model.avatar,
                'like_or_not': like_or_not
            }
    result['num'] = count
    return data_api(
        message='获取成功',
        result=result
    )


@comment_blue.route('/addComment', methods=['POST'])
def add_comment():
    userid = request.form['userid']
    text = request.form['text']
    seedword = request.form['seedword']
    seedword_id = SeedWordModel.query.filter_by(word=seedword).first().id
    compword = request.form['compword']
    if compword:
        compword_id = CompWordModel.query.filter_by(word=compword).first().id
    else:
        compword_id = None
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


@comment_blue.route('/like', methods=['PUT'])
def like():
    comment_id = request.form['comment_id']
    user_id = request.form['user_id']
    user_model = UserModel.query.filter_by(id=user_id).first()
    comment_model = CommentModel.query.filter_by(id=comment_id).first()
    comment_model.like += 1
    comment_model.liked_user.append(user_model)
    db.session.commit()

    return success_api("点赞成功")


@comment_blue.route('/cancel_like', methods=['PUT'])
def cancel_like():
    comment_id = request.form['comment_id']
    user_id = request.form['user_id']
    user_model = UserModel.query.filter_by(id=user_id).first()
    comment_model = CommentModel.query.filter_by(id=comment_id).first()
    comment_model.like -= 1
    comment_model.liked_user.remove(user_model)
    db.session.commit()

    return success_api("取消点赞成功")

