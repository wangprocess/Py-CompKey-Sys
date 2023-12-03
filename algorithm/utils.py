import spacy
import os


# 工具方法：测试词义相似度
# 认为两个词义高度近似的词在竞度分析中是没有意义的
# 并解决一个词包含另一个词引起的搜索量消失问题

def word_similarity(word1, word2):
    #     nlp = spacy.load('zh_core_web_sm')
    #     doc1 = nlp(word1)
    #     doc2 = nlp(word2)
    #     similarity = doc1.similarity(doc2)
    similarity = 0
    if word1 in word2 or word2 in word1:
        similarity = 0.95
    if similarity >= 0.9:
        return True  # true表示高度相似
    else:
        return False  # false表示相似度较低


# 工具方法：判断一个目录是否存在，不存在则创建
def path_check(path):
    if not os.path.exists(path):
        os.makedirs(path)
