# 在这里选择配置文件，可以自己新建一个private_config.py文件来存私人的配置，并从其导入Config
from .private_config import Config
from .dev import DevelopmentConfig
from .prop import ProductionConfig

