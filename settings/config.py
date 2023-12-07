# 全局通用配置类
class Config(object):
    """项目配置核心类"""
    # 调试模式
    DEBUG = False

    # 配置日志
    # LOG_LEVEL = "DEBUG"
    LOG_LEVEL = "INFO"

    # mysql 配置
    MYSQL_USERNAME = ""
    MYSQL_PASSWORD = ""
    MYSQL_HOST = ""
    MYSQL_PORT = 3306
    MYSQL_DATABASE = ""

    # 数据库连接格式
    SQLALCHEMY_DATABASE_URI = f"mysql+pymysql://{MYSQL_USERNAME}:{MYSQL_PASSWORD}@{MYSQL_HOST}:{MYSQL_PORT}/{MYSQL_DATABASE}"
    # 动态追踪修改设置，如未设置只会提示警告
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    # 查询时会显示原始SQL语句
    SQLALCHEMY_ECHO = False
    # 数据库连接池的大小
    SQLALCHEMY_POOL_SIZE = 10
    # 指定数据库连接池的超时时间
    SQLALCHEMY_POOL_TIMEOUT = 10
    # 控制在连接池达到最大值后可以创建的连接数。当这些额外的 连接回收到连接池后将会被断开和抛弃。
    SQLALCHEMY_MAX_OVERFLOW = 2

    api_key = ""
    # GPT的api_key,填写后可以使用GPT的接口，模型不同要在applications的gpt的gpt.py和utils文件夹下的gpt_utils.py更改模型，也就是openai的ChatCompletion.create的model
