import oss2

import uuid


def get_uuid():
    """
    Description:   生成uuid作为图片名，保证唯一性
    :return:       根据时间戳生成uuid
    """
    get_timestamp_uuid = uuid.uuid1()
    return get_timestamp_uuid


class OSSUtil:
    """用于阿里云OSS对象存储，上传和下载文件"""

    def __init__(self, ):
        """Constructor for OSS_Util"""
        self._auth = oss2.Auth('LTAI5tA6yPBUkoJTmKrDTcGF', 'nsd0kwUlro6VR3TQk3ApGcSdzXsJSB')
        self._bucket = oss2.Bucket(self._auth, 'http://oss-cn-hangzhou.aliyuncs.com', 'business-03')

    def put_object(self, image_path):
        """
        Description:   上传图片
        :param:
            filepath:   本地文件位置
        :return:       文件公网访问url
        """
        # self._bucket.put_object_from_file('images/test.png', '../static/images/rf_result.png')
        # https://defect-predict.oss-cn-hangzhou.aliyuncs.com/ + postfix即可公网访问
        image_name = str(get_uuid()) + ".png"
        self._bucket.put_object_from_file("images/" + image_name, image_path)
        return "https://business-03.oss-cn-hangzhou.aliyuncs.com/images/" + image_name

    def put_md(self, md_path):
        """
        Description:   上传图片
        :param:
            filepath:   本地文件位置
        :return:       文件公网访问url
        """
        # self._bucket.put_object_from_file('images/test.png', '../static/images/rf_result.png')
        # https://defect-predict.oss-cn-hangzhou.aliyuncs.com/ + postfix即可公网访问
        md_name = str(get_uuid()) + ".md"
        self._bucket.put_object_from_file("md/" + md_name, md_path)
        return "https://business-03.oss-cn-hangzhou.aliyuncs.com/md/" + md_name

if __name__ == '__main__':
    # for i in range(5):
    #     print(get_uuid())

    _oss_util = OSSUtil()
    print(_oss_util.put_object("F:\大三上课内学习\电子商务应用\py-comp-key-sys\static\images\原神启动.jpg"))
