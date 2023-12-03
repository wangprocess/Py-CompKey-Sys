import re
import datetime
import jieba
from collections import Counter
from chardet.universaldetector import UniversalDetector

detector = UniversalDetector()
detector.reset()

filepath = "./user_tag_query.10W.TRAIN"
for each in open(filepath, 'rb'):
    detector.feed(each)
    if detector.done:
        break
detector.close()
fileencoding = detector.result['encoding']
confidence = detector.result['confidence']

if fileencoding == "GB2312" or "GBK":
    fileencoding = "GB18030"
print(fileencoding)
print(confidence)


# 首先读取文件
start = datetime.datetime.now()
data = open('./user_tag_query.10W.TRAIN', 'r', encoding=fileencoding)
all_loginfo = []

for line in data:
    # 对第一行所有内容进行制表符拆分
    line_pre = line.split('\t')
    valid_info = line_pre[4:]

    all_loginfo.extend(valid_info)
    # 测试一下日志中总共有多少条记录
print(len(all_loginfo))

file_name = 'all_logs.txt'
# 打开文件以写入模式
with open(file_name, 'w', encoding='utf-8') as file:
    # 逐行写入列表中的数据
    for words in all_loginfo:
        file.write(words + '\n')

# 中间写代码块
end = datetime.datetime.now()
print('Running time: %s Seconds' % (end - start))


# 过滤掉无效内容
data = open('./all_logs.txt', 'r', encoding='utf-8')
pattern = r'https?://\S+|www\.\S+|[\w.-]+@[\w.-]+|'
file_name = 're_filter.txt'
fil_loginfo = []
count = 0
for word in data:
    filtered_line = re.sub(pattern, '', word)
     # 打印经过过滤的行（如果不为空）
    if filtered_line.strip():  # 检查经过过滤后的行是否不为空
        fil_loginfo.append(filtered_line)
with open(file_name, 'w', encoding='utf-8') as file:
    # 逐行写入列表中的数据
    for words in fil_loginfo:
        file.write(words)


sep_list = []
data = open('./re_filter.txt', encoding='utf-8')
for word in data:
    word = word.strip()
    seg_list = jieba.cut(word, cut_all=False)
    Seg_list = list(seg_list)
    sep_list.extend(Seg_list)

file_name = 'jieba_words.txt'
    # 打开文件以写入模式
with open(file_name, 'w', encoding='utf-8') as file:
    # 逐行写入列表中的数据
    for words in sep_list:
        file.write(words + '\n')

stop_words = "stop_words.txt"
stop_words_dict = open(stop_words, 'r', encoding='utf-8')
stop_words_contents = stop_words_dict.read()
stop_words_list = stop_words_contents.splitlines()
stop_words_dict.close()

word_list = []
data = open('./jieba_words.txt', encoding='utf-8')
for word in data:
    word = word.strip()
    word_list.append(word)

def remove_stop_words(word_list, stop_words):
    word_cleaned = []
    for word in word_list:
        if word not in stop_words:
            word_cleaned.append(word)
    return word_cleaned

word_list = remove_stop_words(word_list, stop_words_list)

print(len(word_list))

file_name = 'stopwords_filter.txt'
    # 打开文件以写入模式
with open(file_name, 'w', encoding='utf-8') as file:
    # 逐行写入列表中的数据
    for words in word_list:
        file.write(words + '\n')

# 下面统计所有关键词的出现次数

word_list = []
data = open('./stopwords_filter.txt', encoding='utf-8')
for word in data:
    word = word.strip()
    word_list.append(word)


result = []
count_result = Counter(word_list)
for key, val in count_result.most_common(2000):
    key_val = "关键字：" + key + "||" + "出现次数：" + str(val)
    print(key_val)
    result.append(key_val)

file_name = 'seeds_keyvalue.txt'
# 打开文件以写入模式
with open(file_name, 'w', encoding='utf-8') as file:
    # 逐行写入列表中的数据
    for words in result:
        file.write(words + '\n')