import xadmin
from .models import User
from xadmin import views
# 创建xadmin的最基本管理器配置，并与view绑定
class BaseSetting(object):
    # 开启主题功能
    enable_themes = True
    use_bootswatch = True

# 全局修改，固定写法
class GlobalSettings(object):
    # 修改title
    site_title = '大数据后台管理'
    # 修改footer
    site_footer = 'i大数据网络有限公司'
    # 收起菜单
    menu_style = 'accordion'

# 将title和footer信息进行注册
xadmin.site.register(views.CommAdminView,GlobalSettings)




class UserAdmin(object):
    list_display = ['name','birthday','adress','mobile']
    search_fields = ['name', 'mobile']
    list_filter = ['name', 'mobile', ]


# 将管理器与model进行注册关联
xadmin.site.register(User, UserAdmin)
