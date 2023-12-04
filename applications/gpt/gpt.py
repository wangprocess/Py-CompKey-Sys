import time
import openai
from applications.gpt import gpt
from tenacity import retry, stop_after_attempt, wait_random_exponential, wait_fixed
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect
from extensions.init_login import *
app = Flask(__name__)


@gpt.route('/twoWord', methods=['POST'])
@retry(wait=wait_fixed(10), stop=stop_after_attempt(10))
def generate_competitive_analysis_report():
    brand1 = request.form['brand1']
    brand2 = request.form['brand2']
    api_key = "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"
    prompt = f"请用中文回答下面问题并生成中文文档，请注意不要有任何和时间相关的警告说明，Please provide a detailed competitive analysis report between {brand1} and {brand2}, " \
             f"focusing on their market strategies, product offerings, sales performance, technological advancements, " \
             f"and future prospects. "
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content2'] = response.choices[0].message['content']
    return response.choices[0].message['content']




@gpt.route('/oneWord', methods=['POST'])
@retry(wait=wait_fixed(10), stop=stop_after_attempt(10))
def generate_word_analysis_report():
    brand1 = request.form['brand1']
    api_key = "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"
    prompt = f" 请注意不要有任何和时间相关的警告说明，请用中文回答并生成一个文档来简单的介绍{brand1}"
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']


@gpt.route('/image', methods=['POST'])
@retry(wait=wait_fixed(10), stop=stop_after_attempt(10))
def generate_image():
    imageGen = request.form['imageGen']
    api_key = "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"
    prompt = f"现在，当我想要你生成照片/图片时，用3/8Markdown 写，不要有反斜钱,不要用代码块。使用Unsplash APl(https://source.unsplash.com/1280x720/?<PUT YOUR QUERY HERE >)。如果听懂了请回复明白，以后都需要这样，请生成{imageGen}的图片"
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']
