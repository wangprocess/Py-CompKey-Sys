import matplotlib.pyplot as plt
import wordcloud
from .compkey_ALG import path_check

path_check("algorithm/image")


def plot_cloud(seedword, compword_list):
    k_text = ""
    # import re
    #
    # relink = r'k:(.+)'
    for key in compword_list:
        # k = re.findall(relink, key)
        k_text += key + " "

    wc = wordcloud.WordCloud('static/fonts/SimHei.ttf',
                   width=1000,
                   height=700,
                   background_color='white',
                   max_words=200).generate(k_text)

    # 显示词云
    plt.imshow(wc, interpolation='bilinear')  # 用plt显示图片
    plt.axis("off")  # 不显示坐标轴

    path = 'algorithm/image/' + seedword + '_wordcloud.jpg'
    plt.savefig(path)

    plt.close()

    return path
