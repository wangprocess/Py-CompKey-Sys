import time
import openai
from applications.gpt import gpt
from tenacity import retry, stop_after_attempt, wait_random_exponential, wait_fixed
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect
from extensions.init_login import *
app = Flask(__name__)


def generate_image(imageGen, related_word):
    api_key = "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"

    words = ""
    for word in related_word:
        words = words + word + ','

    prompt = f"现在，当我想要你生成照片/图片时。使用Unsplash APl(https://source.unsplash.com/1280x720/?<PUT YOUR QUERY HERE >)。如果听懂了不需要回复，请生成{imageGen}的图片，只需要给我一个链接，不要回复其他任何内容，请注意这里的{imageGen}的相关词是{words}，不要误解了这里{imageGen}的意思"
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']