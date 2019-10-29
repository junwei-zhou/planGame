import xadmin
from .models import Sel_data,Anl_data,Hut_data,Pre_data

class Sel_dataAdmin(object):
    list_display = ['name','desc','add_time']
    search_fields = ['name', 'add_time']
    list_filter = ['name', 'add_time', ]

class Anl_dataAdmin(object):
    list_display = ['name','desc','click_nums','fav_nums','address','add_time']
    search_fields = ['name', 'add_time','click_nums']
    list_filter = ['name', 'add_time', 'click_nums']


class Hut_dataAdmin(object):
    list_display = ['name','add_time']
    search_fields = ['name', 'add_time']
    list_filter = ['name', 'add_time', ]

class Pre_dataAdmin(object):
    list_display = ['name','add_time']
    search_fields = ['name', 'add_time']
    list_filter = ['name', 'add_time', ]


# 将管理器与model进行注册关联
xadmin.site.register(Sel_data, Sel_dataAdmin)
xadmin.site.register(Anl_data, Anl_dataAdmin)
xadmin.site.register(Hut_data, Hut_dataAdmin)
xadmin.site.register(Pre_data, Pre_dataAdmin)