import jieba

from .utils import word_similarity, path_check


# -------------下面是中介关键词的获得-----------------


# step1 进行有关搜索信息的提取
def seedwords_record(seedword, filename):
    """
    获取种子关键词的搜索记录
    """
    origin_data = open('algorithm/re_filter.txt', encoding='utf-8')
    result_data = open(filename, 'w', encoding='utf-8')
    for sentence in origin_data:
        if seedword in sentence:
            result_data.write(sentence)
    origin_data.close()
    result_data.close()


# step2 对搜索信息进行jieba分词
# 对包含种子关键词的搜索信息进行jieba分词
def jieba_sep_searchInfo(seedword, filename):
    """
    对种子关键词的搜索记录进行jieba分词
    """
    sep_list = []
    data = open('algorithm/seedwords_agencywords/search_info/seedword_' + seedword + '.txt', encoding='utf-8')
    for word in data:
        word = word.strip()
        seg_list = jieba.cut(word, cut_all=False)
        Seg_list = list(seg_list)
        sep_list.extend(Seg_list)

        # 打开文件以写入模式
    with open(filename, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in sep_list:
            file.write(words + '\n')


def removeseed_stop_words(seedword, stop_words):
    """对种子关键词的搜索记录进行停语词的去除"""
    word_list = []
    filename1 = 'algorithm/seedwords_agencywords/jieba_search_info/seedword_' + seedword + '.txt'
    data = open(filename1, encoding='utf-8')
    word_cleaned = []
    for word in data:
        word = word.strip()
        word_list.append(word)

    for word in word_list:
        if word not in stop_words:
            word_cleaned.append(word)
    filename2 = 'algorithm/seedwords_agencywords/stop_words_filter/seedword_' + seedword + '.txt'
    with open(filename2, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in word_cleaned:
            file.write(words + '\n')


# step4 停语词清洗后的结果进行出现出现次数统计

# 下面统计对于每个种子关键字而言，关联搜索信息中的中介关键词的出现次数
def get_s_sa(seedword, agencyword):
    """
    获取一个中介关键词在种子关键词相关的搜索记录中出现的次数
    :param seedword: 种子关键词
    :param agencyword: 中介关键词
    :return: 种子关键词的出现次数+中介关键词的出现次数
    sa的意思是在s的搜索记录下的a
    """
    s_num = 0
    sa_num = 0
    origin_data = open('algorithm/seedwords_agencywords/search_info/seedword_' + seedword + '.txt', encoding='utf-8')
    for sentence in origin_data:
        if seedword in sentence:
            s_num += 1
        if agencyword in sentence:
            sa_num += 1

    origin_data.close()
    return s_num, sa_num


def seed_agent(filename, seedword):
    """
    获取一个种子关键词的相关中介关键词
    """
    word_list = []
    result = []
    data = open('algorithm/seedwords_agencywords/stop_words_filter/seedword_' + seedword + '.txt', encoding='utf-8')
    for word in data:
        word = word.strip()
        word_list.append(word)
    count_result = Counter(word_list)
    for key, val in count_result.most_common(100):
        if word_similarity(seedword, key):
            continue
        s_num, sa_num = get_s_sa(seedword, key)
        if key == seedword:
            key_val = "关键字：" + key + "||" + "出现次数：" + str(val)
        else:
            key_val = "关键字：" + key + "||" + "出现次数：" + str(val) + "||" + "中介关键词权重：" + str(
                round(sa_num / s_num, 8))
        result.append(key_val)

        # 对结果按中介关键词权重降序排列
    result.sort(key=lambda x: float(x.split("中介关键词权重：")[1]), reverse=True)

    # 打开文件以写入模式
    with open(filename, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in result:
            file.write(words + '\n')


# step1 进行有关搜索信息的提取，将各个中介关键词的相关搜索都提取出来
def agencyword_record(agencyword, filename):
    """
    获取中介关键词的搜索记录
    """
    origin_data = open('algorithm/re_filter.txt', encoding='utf-8')
    result_data = open(filename, 'w', encoding='utf-8')
    for sentence in origin_data:
        if agencyword in sentence:
            result_data.write(sentence)
    origin_data.close()
    result_data.close()


# 从中介关键词存放的文件中读取出相关信息，这里只提取权重在前10的中介关键词
def get_agencywords(seedword):
    """
    从文件中拿前10个中介关键词
    """
    agencywords_list = []
    agencywords_data = open('algorithm/seedwords_agencywords/agency_words/seedword_' + seedword + '.txt', encoding='utf-8')
    line_count = 0
    for line in agencywords_data:
        data = line.split("||")
        word = data[0][4:]
        if word == seedword:
            continue  # 该关键词是种子关键词，则丢弃
        elif word_similarity(seedword, word):
            continue  # 将相似度很高的词进行剔除
        agencywords_list.append(word)

        line_count += 1
        if line_count >= 10:
            break  # 达到10行后退出循环

    return agencywords_list


# step2 对搜索信息进行jieba分词

# 对包含中介关键词的搜索信息进行jieba分词
def agencyword_jieba_sep_searchInfo(seedword, agencyword, filename):
    sep_list = []
    data = open('algorithm/agencywords_compkey/search_info/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt',
                encoding='utf-8')
    for word in data:
        word = word.strip()
        seg_list = jieba.cut(word, cut_all=False)
        Seg_list = list(seg_list)
        sep_list.extend(Seg_list)

        # 打开文件以写入模式
    with open(filename, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in sep_list:
            file.write(words + '\n')


def agencyword_removeseed_stop_words(seedword, agencyword, stop_words):
    word_list = []
    filename1 = 'algorithm/agencywords_compkey/jieba_search_info/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
    data = open(filename1, encoding='utf-8')
    word_cleaned = []
    for word in data:
        word = word.strip()
        word_list.append(word)

    for word in word_list:
        if word not in stop_words:
            word_cleaned.append(word)
    filename2 = 'algorithm/agencywords_compkey/stop_words_filter/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
    with open(filename2, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in word_cleaned:
            file.write(words + '\n')


# step4 停语词清洗后的结果进行出现出现次数统计

# 将所有的关键词进行保存
from collections import Counter


def find_compkey(seedword, agencyword, filename):
    word_list = []
    result = []
    data = open('algorithm/agencywords_compkey/stop_words_filter/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt',
                encoding='utf-8')
    for word in data:
        word = word.strip()
        word_list.append(word)
    count_result = Counter(word_list)
    for key, val in count_result.most_common(150):
        if key == agencyword:
            key_val = "中介关键字：" + key + "||" + "出现次数：" + str(val)
        elif key == seedword:
            key_val = "种子关键字：" + key + "||" + "出现次数：" + str(val)
        else:
            key_val = "竞争关键字：" + key + "||" + "出现次数：" + str(val)
        result.append(key_val)
        # 打开文件以写入模式
    with open(filename, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in result:
            file.write(words + '\n')


# 下面是comp竞度的计算和相关操作

# 获取文件中a、sa、ka的搜索量
def get_a_sa_ka(seedword, agencyword, compkey):
    a_num = 0
    sa_num = 0
    ka_num = 0
    origin_data = open('algorithm/agencywords_compkey/search_info/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt',
                       encoding='utf-8')
    for sentence in origin_data:
        if seedword in sentence:
            if compkey in sentence:
                continue
            else:
                sa_num += 1
                a_num += 1
        else:
            if compkey in sentence:
                ka_num += 1
                a_num += 1
            else:
                a_num += 1

    origin_data.close()
    return a_num, sa_num, ka_num


# 计算comp竞度
def cal_comp_a(a, sa, ka):
    return round(ka / (a - sa), 8)


# 从文件中提取出竞争关键词
def get_compkeys(seedword, agencyword):
    compkeys_list = []
    compkeys_data = open(
        'algorithm/agencywords_compkey/compkey_words/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt',
        encoding='utf-8')
    line_count = 0
    for line in compkeys_data:
        data = line.split("||")
        word = data[0][6:]
        if word == agencyword:
            continue
        if word == seedword:
            continue
        if word_similarity(word, seedword):
            continue
        if word_similarity(word, agencyword):
            continue
        compkeys_list.append(word)

        line_count += 1
        if line_count >= 20:
            break  # 达到5行后退出循环

    return compkeys_list


# 保存comp竞度
def save_comp_a(result, filename):
    with open(filename, 'w', encoding='utf-8') as file:
        # 逐行写入列表中的数据
        for words in result:
            file.write(words + '\n')


# 数据平滑函数
def smoothing(alpha, data_dict):
    average_data = sum(data_dict.values()) / len(data_dict)  # 求数据的平均值

    smoothed_dict = {}
    for key, val in data_dict.items():
        smoothed_value = alpha * data_dict[key] + (1 - alpha) * average_data
        smoothed_dict[key] = smoothed_value
    return smoothed_dict


# 对权重进行平滑
def weight_smoothing(seedword, agencywords_list, tar_agencyword):
    alpha = 0.8  # 平滑指数
    weight_dict = {}
    for agencyword in agencywords_list:
        with open('algorithm/seedwords_agencywords/agency_words/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file:
            for record in file:
                info = record.split("||")
                if info[0][4:] == agencyword:
                    weight_value = float(info[2][8:])
                    weight_dict[agencyword] = weight_value
    weight_dict = smoothing(alpha, weight_dict)
    return weight_dict[tar_agencyword]


def cal_comp(seedword, compkey, agencywords_list):
    comp = 0  # comp的总和
    compkey_a_list = []  # 和compkey有关的agency
    for agencyword in agencywords_list:
        weight = 0
        comp_a = 0
        # 获取该a的weight
        with open('algorithm/seedwords_agencywords/agency_words/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file:
            for record in file:
                info = record.split("||")
                if info[0][4:] == agencyword:
                    weight = weight_smoothing(seedword, agencywords_list, agencyword)
        # 获取在a下的comp值
        with open('algorithm/comp_base_a/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt', 'r',
                  encoding='utf-8') as file:
            for record in file:
                info = record.split("||")
                if compkey == info[2][6:]:
                    comp_a = float(info[3][5:])
                    comp += comp_a * weight
                    compkey_a_list.append(agencyword)
    return comp, compkey_a_list


def compkey_alg(seedwords_list):
    # ----------获取种子关键词的搜索记录
    path_check('algorithm/seedwords_agencywords/search_info')
    for seedword in seedwords_list:
        filename = 'algorithm/seedwords_agencywords/search_info/seedword_' + seedword + '.txt'
        seedwords_record(seedword, filename)

    # ----------对搜索记录进行jieba分词
    path_check('algorithm/seedwords_agencywords/jieba_search_info')
    for seedword in seedwords_list:
        filename = 'algorithm/seedwords_agencywords/jieba_search_info/seedword_' + seedword + '.txt'
        jieba_sep_searchInfo(seedword, filename)

    # ----------停语词文件
    stop_words = "algorithm/stop_words.txt"
    stop_words_dict = open(stop_words, 'r', encoding='utf-8')
    stop_words_contents = stop_words_dict.read()
    stop_words_list = stop_words_contents.splitlines()
    stop_words_dict.close()

    # ----------停语词清洗
    path_check('algorithm/seedwords_agencywords/stop_words_filter')
    for seedword in seedwords_list:
        removeseed_stop_words(seedword, stop_words_list)

    # ----------获取中介关键词
    path_check('algorithm/seedwords_agencywords/agency_words')
    for seedword in seedwords_list:
        filename = 'algorithm/seedwords_agencywords/agency_words/seedword_' + seedword + '.txt'
        seed_agent(filename, seedword)

    # ----------获取中介关键词相关搜索记录
    path_check('algorithm/agencywords_compkey/search_info/seedword_' + seedword)
    # 对每个种子关键词的中介关键词进行遍历
    for seedword in seedwords_list:
        agencywords_list = get_agencywords(seedword)
        for agencyword in agencywords_list:
            filename = 'algorithm/agencywords_compkey/search_info/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
            agencyword_record(agencyword, filename)

    # ----------中介关键词的jieba分词
    path_check('algorithm/agencywords_compkey/jieba_search_info/seedword_' + seedword)
    for seedword in seedwords_list:
        agencywords_list = get_agencywords(seedword)
        for agencyword in agencywords_list:
            filename = 'algorithm/agencywords_compkey/jieba_search_info/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
            agencyword_jieba_sep_searchInfo(seedword, agencyword, filename)

    # ----------中介关键词的停语词清洗
    path_check('algorithm/agencywords_compkey/stop_words_filter/seedword_' + seedword)
    for seedword in seedwords_list:
        agencywords_list = get_agencywords(seedword)
        for agencyword in agencywords_list:
            filename = 'algorithm/agencywords_compkey/stop_words_filter/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
            agencyword_removeseed_stop_words(seedword, agencyword, stop_words_list)

    # -----------获取备选竞争关键词
    path_check('algorithm/agencywords_compkey/compkey_words/seedword_' + seedword)
    for seedword in seedwords_list:
        agencywords_list = get_agencywords(seedword)
        for agencyword in agencywords_list:
            filename = 'algorithm/agencywords_compkey/compkey_words/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
            find_compkey(seedword, agencyword, filename)

    # -----------计算在中介关键词a下的comp度，是单个agency的comp度
    path_check('algorithm/comp_base_a/seedword_' + seedword)
    for seedword in seedwords_list:
        agencywords_list = get_agencywords(seedword)
        for agencyword in agencywords_list:
            compkeys_list = get_compkeys(seedword, agencyword)
            result = []  # 每一个中介关键词存一遍结果
            for compkey in compkeys_list:
                a_num, sa_num, ka_num = get_a_sa_ka(seedword, agencyword, compkey)
                comp = cal_comp_a(a_num, sa_num, ka_num)
                info = "种子关键词:" + seedword + "||" + "中介关键词:" + agencyword + "||" + "竞争关键词:" + compkey + "||" + "comp:" + str(
                    comp)
                result.append(info)
            result.sort(key=lambda x: float(x.split("comp:")[1]), reverse=True)
            filename = 'algorithm/comp_base_a/seedword_' + seedword + '/agencyword_ ' + agencyword + '.txt'
            save_comp_a(result, filename)

    # ------------计算总的comp度，是多个中介关键词一起加权起来的
    path_check('algorithm/comp')
    for i, seedword in enumerate(seedwords_list):
        # 创建一个空的二维列表
        all_compkey = []
        agencywords_list = get_agencywords(seedword)
        for agencyword in agencywords_list:
            compkeys_list = get_compkeys(seedword, agencyword)
            all_compkey.extend(compkeys_list)

        # 通过将列表转换为集合，然后再转换回列表来去除重复项
        all_compkey = list(set(all_compkey))

        all_info = []
        for compkey in all_compkey:
            comp, compkey_a_list = cal_comp(seedword, compkey, agencywords_list)
            one_info = "竞争关键词:" + compkey + "||" + "comp:" + str(comp) + "||" + "用到的中介关键词:" + ','.join(
                compkey_a_list)
            all_info.append(one_info)

        all_info.sort(key=lambda x: float(x.split("||")[1][5:]), reverse=True)
        with open('algorithm/comp/seedword_' + seedword + '.txt', 'w', encoding='utf-8') as file:
            # 逐行写入列表中的数据
            for info in all_info:
                file.write(info + '\n')

    # ------------去除竞争关键词是中介关键词的情况
    path_check('algorithm/comp_plus')
    for seedword in seedwords_list:
        agencywords_list = get_agencywords(seedword)
        with open('algorithm/comp/seedword_' + seedword + '.txt', 'r', encoding='utf-8') as file, open(
                'algorithm/comp_plus/seedword_' + seedword + '.txt', 'w', encoding='utf-8') as outputfile:
            for record in file:
                info = record.split("||")
                compkey = info[0][6:]
                if compkey not in agencywords_list:
                    outputfile.write(record)
