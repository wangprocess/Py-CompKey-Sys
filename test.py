import requests

seedword_list = ['支付宝', '华为', '苹果', 'lol', '网络', '湖南', '地铁', '鸡', '篮球', '汽车', '中学', 'wifi', '教育', '面膜', '会员', '银行卡', '笔记本', 'app', '老虎', '女孩', '品牌', '明星', '破解版']


for seedword in seedword_list:
    # 发送 GET 请求
    response_get = requests.get('http://127.0.0.1:5000/compkey/lists?seedword=' + seedword)
    print('GET Response:', response_get.text)

