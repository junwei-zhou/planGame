from django.db import models
from datetime import datetime



class Sel_data(models.Model):
    name = models.CharField('数据采集部门',max_length=20)
    desc = models.CharField('描述',max_length=200)
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = '数据采集部门'
        verbose_name_plural= verbose_name
    def __str__(self):
        return self.name

class Anl_data(models.Model):
    name = models.CharField('数据展示部门',max_length=50)
    desc = models.TextField('描述')
    click_nums = models.IntegerField('点击数',default=0)
    fav_nums = models.IntegerField('收藏数',default=0)
    address = models.CharField('机构地址',max_length=150,)
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = '数据展示部门'
        verbose_name_plural = verbose_name
    def __str__(self):
        return self.name


class Hut_data(models.Model):
    name = models.CharField('数据入库部门',max_length=50)
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = '数据入库部门'
        verbose_name_plural = verbose_name
    def __str__(self):
        return self.name


class Pre_data(models.Model):
    name = models.CharField('数据预处理部门',max_length=50)
    add_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = '数据预处理部门'
        verbose_name_plural = verbose_name
    def __str__(self):
        return self.name
