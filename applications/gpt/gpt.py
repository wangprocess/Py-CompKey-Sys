import time
import openai
from applications.gpt import gpt
from tenacity import retry, stop_after_attempt, wait_random_exponential, wait_fixed
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect
from extensions.init_login import *
from utils import data_api, OSSUtil


@gpt.route('/twoWord', methods=['POST'])
@retry(wait=wait_fixed(10), stop=stop_after_attempt(10))
def generate_competitive_analysis_report():
    brand1 = request.form['brand1']
    brand2 = request.form['brand2']
    print(brand1)
    print(brand2)
    api_key = "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"
    prompt = f"请用中文回答下面问题并生成中文文档，使用markdown格式，请注意不要有任何和时间相关的警告说明，Please provide a detailed competitive analysis report between {brand1} and {brand2}, " \
             f"focusing on their market strategies, product offerings, sales performance, technological advancements, " \
             f"and future prospects. "
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    info = response.choices[0].message['content']
    with open('static/images/' + brand1 + '_' + brand2 + '_report.md', 'w', encoding='utf-8') as file:
        for record in file:
            file.write(record)

    _oss_util = OSSUtil()
    md_path = _oss_util.put_md('static/images/' + brand1 + '_' + brand2 + '_report.md')
    result = {'md_path': md_path}

    message = info.split('\n')
    result['title'] = message[0][1:]
    count = 0
    in_block = False
    for line in message:
        if line.startswith('##') and not line.startswith('###'):
            if in_block:
                result['block' + str(count)]['text'] = result['block' + str(count)]['text'][:-4]
            count += 1
            result['block' + str(count)] = {'title': line[2:], 'text': ''}
            in_block = True

        elif in_block:
            if not line:
                continue
            elif line.startswith('###'):
                result['block' + str(count)]['text'] += '-' + line[3:] + '<br>'
            else:
                result['block' + str(count)]['text'] += line + '<br>'

    result['block_num'] = count

    return result
