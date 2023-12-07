import time
import openai
from applications.gpt import gpt
from tenacity import retry, stop_after_attempt, wait_random_exponential, wait_fixed
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect
from extensions.init_login import *
from settings import Config


def generate_image(imageGen, related_word):
    api_key = Config.api_key

    words = ""
    for word in related_word:
        words = words + word + ','

    prompt = f"现在，当我想要你生成照片/图片时。使用Unsplash APl(https://source.unsplash.com/1280x720/?<PUT YOUR QUERY HERE >)。如果听懂了不需要回复，请生成{imageGen}的图片，只需要给我一个链接，不要回复其他任何内容，请注意这里的{imageGen}的相关词是{words}，你可以作为参考，不要误解了这里{imageGen}的意思"
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']


def generate_word_analysis_report(brand1, related_word):
    api_key = Config.api_key

    words = ""
    for word in related_word:
        words = words + word + ','

    prompt = f" 请注意不要有任何和时间相关的警告说明，请用中文回答并简单的介绍{brand1}，要求简短精炼,一定要在50字以内,请注意这里的{brand1}的相关词是{words}，你可以做参考，不要误解了这里{brand1}的意思"
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']

