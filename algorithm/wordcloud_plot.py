import matplotlib.pyplot as plt
import wordcloud
import os
def plot_cloud(comp_dict):
    k_text = ""
    comp_key = comp_dict[0]
    # import re
    #
    # relink = r'k:(.+)'
    for key in comp_dict:
        # k = re.findall(relink, key)
        k_text += key + " "
    print(comp_key)
    print(k_text)

    wc = wordcloud.WordCloud('../static/fonts/SimHei.ttf',
                   width=1000,
                   height=700,
                   background_color='white',
                   max_words=200).generate(k_text)

    # 显示词云
    plt.imshow(wc, interpolation='bilinear')  # 用plt显示图片
    plt.axis("off")  # 不显示坐标轴
    plt.show()  # 显示图片
    path = 'algorithm/image/' + comp_key + '_compkeys.jpg'
    plt.savefig(path)

comp_dict = ['小米','华为','三星','诺基亚','魅族','一加']
plot_cloud(comp_dict)