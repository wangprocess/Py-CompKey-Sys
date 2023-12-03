from applications.users import user_blue
from models import UserModel


@user_blue.route('/getUser', methods=['GET'])
def get_user():
    # 使用UserModel进行操作 。。。。。。
    print("get user")
    return "getuser"
