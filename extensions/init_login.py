from flask_login import LoginManager


def init_login_manager(app):
    login_manager = LoginManager(app)
    login_manager.login_view = 'login'
    login_manager.login_message_category = 'info'
    login_manager.login_message = 'Access denied.'

    @login_manager.user_loader
    def load_user(username):
        # 从数据库或者其他存储位置 读取用户信息
        from models import UserModel
        user = UserModel.query.filter_by(username=username).first()
        return user
