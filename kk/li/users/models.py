from django.db import models

# 自定义用户模型
class User(models.Model):
    name = models.CharField('名字', max_length=20)
    birthday = models.DateField('生日', null=True, blank=True)
    adress = models.CharField('地址', max_length=100, default='')
    mobile = models.CharField('手机号', max_length=11, null=True, blank=True)

    class Meta:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username

