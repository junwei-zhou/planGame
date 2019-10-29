# users/forms.py
from django import forms



class LoginForm(forms.Form):
    '''登录验证表单'''
    '''这要求model是要定义的'''
    username = forms.CharField(required=True)
    password = forms.CharField(required=True,min_length=5)








