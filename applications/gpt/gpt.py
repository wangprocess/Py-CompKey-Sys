import time
import openai
from applications.gpt import gpt
from tenacity import retry, stop_after_attempt, wait_random_exponential, wait_fixed
from flask_login import LoginManager, login_user, logout_user, login_required, UserMixin, current_user
from flask import Flask, request, session, redirect
from extensions.init_login import *
from utils import data_api


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
    message = response.choices[0].message['content'].split('\n')
    # session['content2'] = response.choices[0].message['content']
#     message = """# 小米与华为竞争分析报告

# ## 一、市场策略分析

# ### 小米市场策略：

# 小米的市场策略以“性价比”著称，致力于提供高性能、低价格的智能设备。小米采用互联网营销策略，例如社交媒体营销、网络直播和粉丝经济，以减少实体店铺成本并提升品牌互动。此外，小米频繁推出新品并通过Hunger Marketing（饥饿营销）激起消费者兴趣。

# ### 华为市场策略：

# 华为则聚焦于技术创新和品质，致力于打造高端品牌形象。他们投入巨额资金于研发，不断推进通信技术和智能手机摄影等方面的突破。并且积极拓展国际市场，尽管面临国际贸易阻碍，但仍在欧洲和亚洲等地表现良好。

# ## 二、产品线比较

# ### 小米产品线：

# 小米产品种类多样，覆盖从低端到中高端的智能手机，同时涉足智能家居、生态链产品等领域。小米的产品迭代速度快，不断推出具有创新功能的新产品。

# ### 华为产品线：

# 华为产品通常定位于中高端市场，智能手机系列如Mate和P系列备受认可。除了智能手机外，华为也发展了包括笔记本电脑、平板、穿戴设备以及企业解决方案等多元化产品。

# ## 三、销售业绩比较

# ### 小米销售业绩：

# 小米的销售业绩在全球范围内稳步增长，尤其是在印度、东南亚和欧洲市场取得显著成效。通过线上和线下渠道相结合的销售模式，小米快速扩大了市场份额。

# ### 华为销售业绩：

# 华为在过去几年中销售业绩表现卓越，尤其在中国市场占有主导地位。但受国际贸易限制的影响，海外市场的销售已受到挑战，尤其是智能手机业务。

# ## 四、技术进展比较

# ### 小米技术进展：

# 小米在AIoT（人工智能物联网）领域不断进步，推出了多款智能家居产品，并构建了较为完善的生态链系统。同时在智能手机快充技术和摄像头开发方面也取得了不少成果。

# ### 华为技术进展：

# 华为作为通信技术的领军企业，5G技术处于世界领先水平。华为的研发投入颇为巨大，他们开发的手机摄像系统、芯片设计（如麒麟系列芯片）在业界享有盛名。

# ## 五、未来发展展望

# ### 小米未来展望：

# 小米计划继续扩大国际市场份额，同时加强在智能家居及AIoT领域的投入，打造更加丰富的生态产品线。小米也在积极布局智能电动车领域。

# ### 华为未来展望：

# 华为将继续深耕技术研发，巩固其在5G、人工智能和云计算领域的领先地位。同时，华为正寻求克服国际市场的挑战，通过自主研发的鸿蒙操作系统和华为移动服务（HMS）扩展其生态。

# ## 结论

# 小米和华为在各自的市场策略、产品线、销售业绩、技术进展及未来展望等方面有着明显的特色和差异。两家公司都在争夺全球智能设备市场的主导权，而他们未来的表现将取决于各自的市场适应性及技术革新。"""
    # message = message.split('\n')
    result = {'title': message[0][1:]}
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


@gpt.route('/oneWord', methods=['POST'])
@retry(wait=wait_fixed(10), stop=stop_after_attempt(10))
def generate_word_analysis_report():
    brand1 = request.form['brand1']
    api_key = "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"
    prompt = f" 请注意不要有任何和时间相关的警告说明，请用中文回答并简单的介绍{brand1},尽量少而精炼"
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
    # prompt = f"现在，当我想要你生成照片/图片时。使用Unsplash APl(https://source.unsplash.com/1280x720/?<PUT YOUR QUERY HERE >)。如果听懂了不需要回复，请生成{imageGen}的图片，只需要给我一个链接，不要回复其他任何内容"
    prompt = f"现在，当我想要你生成照片/图片时，用3/8Markdown 写，不要有反斜钱,不要用代码块。使用Unsplash APl(https://source.unsplash.com/1280x720/?<PUT YOUR QUERY HERE >)。如果听懂了请回复明白，以后都需要这样，请生成{imageGen}的图片"
    response = openai.ChatCompletion.create(
        model="gpt-4-1106-preview",
        messages=[{"role": "system", "content": "You are a knowledgeable assistant."},
                  {"role": "user", "content": prompt}],
        api_key=api_key
    )
    session['content1'] = response.choices[0].message['content']
    return response.choices[0].message['content']
