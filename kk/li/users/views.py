from django.shortcuts import render,redirect
from django.contrib.auth import authenticate


def index(request):
    return render(request,'index.html')
# 验证登录
def login(request):
    username = request.POST.get('username',None)
    password = request.POST.get('password',None)
    print(username)
    user = authenticate(username=username, password=password)
    print(user)
    if user is not None:
        return redirect('index')
    return render(request, 'login.html')