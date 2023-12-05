import requests

seedword = "老虎"

# 发送 GET 请求
response_get = requests.get(' http://127.0.0.1:5000/compkey/lists?seedword='+seedword)
print('GET Response:', response_get.text)

