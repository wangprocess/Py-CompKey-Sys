import time
import openai
from applications.gpt import gpt
from tenacity import retry, stop_after_attempt, wait_random_exponential, wait_fixed
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect
from extensions.init_login import *
app = Flask(__name__)


@gpt.route('/oneWord', methods=['POST'])
@retry(wait=wait_fixed(8), stop=stop_after_attempt(6))
def generate_competitive_analysis_report():
    brand1 = request.form['brand1']
    brand2 = request.form['brand2']
    api_key = "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"
    prompt = f"请用中文回答下面问题并生成中文文档，Please provide a detailed competitive analysis report between {brand1} and {brand2}, focusing on their market strategies, product offerings, sales performance, technological advancements, and future prospects."
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content2'] = response.choices[0].message['content']
    return response.choices[0].message['content']




@gpt.route('/twoWord', methods=['POST'])
@retry(wait=wait_fixed(8), stop=stop_after_attempt(6))
def generate_word_analysis_report():
    brand1 = request.form['brand1']
    api_key = "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"
    prompt = f"请用中文回答下面问题并生成中文文档，Please provide a detailed competitive analysis report between {brand1}  focusing on their market strategies, product offerings, sales performance, technological advancements, and future prospects."
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']