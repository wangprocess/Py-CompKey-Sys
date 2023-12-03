# 导入绘图模块
import matplotlib.pyplot as plt
import numpy as np

from .compkey_ALG import path_check, get_agencywords

path_check("algorithm/image")


def plot(seedword):
    comp_list = []
    compkey_list = []

    agencywords_list = []
    weight_list = []

    # 获取agencyword中介关键词和相应的权重
    agencywords_list = get_agencywords(seedword)
    for agencyword in agencywords_list:
        with open('./seedwords_agencywords/agency_words/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file:
            for record in file:
                info = record.split("||")
                if info[0][4:] == agencyword:
                    weight_value = float(info[2][8:])
                    weight_list.append(weight_value)

    # 获取comp
    with open('./comp_plus/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file:
        count = 0
        for record in file:
            info = record.split("||")
            comp_list.append(float(info[1][5:]))
            compkey_list.append(info[0][6:])
            count += 1
            if count == 5:
                break

    # 构建数据
    bar_width = 0.65

    # 中文乱码的处理
    plt.rcParams['font.sans-serif'] = ["KaiTi"]
    plt.rcParams['axes.unicode_minus'] = False
    plt.subplot(2, 1, 1)  # 2行1列的子图，选择第1个子图
    # 绘图,先绘制中介词和权重的图像
    plt.bar(np.arange(10), weight_list, label='weight', color='steelblue', alpha=0.8, width=bar_width)

    # 添加轴标签
    plt.xlabel('中介关键词')
    plt.ylabel('权重')
    # 添加标题
    plt.title("种子关键词: " + seedword)
    # 添加刻度标签
    plt.xticks(np.arange(10), agencywords_list)
    # 设置Y轴的刻度范围
    plt.ylim([0, weight_list[0] + 0.1])

    # 为每个条形图添加数值标签
    for i, weight in enumerate(weight_list):
        plt.text(i - bar_width + 0.2, weight, '{:.4f}'.format(weight), va='bottom')

    # 显示图例
    plt.legend()

    # 构建数据
    bar_width = 0.35
    plt.subplot(2, 1, 2)  # 2行1列的子图，选择第2个子图
    plt.bar(np.arange(5), comp_list, label='comp', color='indianred', alpha=0.8, width=bar_width)
    # 添加轴标签
    plt.xlabel('竞争性关键词')
    plt.ylabel('comp')
    # 添加标题
    plt.title("种子关键词: " + seedword)
    # 添加刻度标签
    plt.xticks(np.arange(5), compkey_list)
    # 设置Y轴的刻度范围
    plt.ylim([0, comp_list[0] + 0.01])
    for i, comp in enumerate(comp_list):
        plt.text(i - 0.2, comp, '{:.5f}'.format(comp), va='bottom')

    # 显示图例
    plt.legend()

    # 调整子图的间距
    plt.tight_layout()

    plt.savefig('./image/' + seedword + '_compkeys.jpg')
    # 显示图形
    plt.show()
