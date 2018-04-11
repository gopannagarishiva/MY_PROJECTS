from django.shortcuts import render
from registration_app import forms
from registration_app import models

from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
# Create your views here.

def home_view(request):
    return render(request,'home.html')

def registration_view(request):
    if(request.method=='POST'):
        dbs=forms.registration_form(request.POST)
        dbs.save(commit=True)

    registration_dict={'registration_key':forms.registration_form}
    return render(request,'register.html',registration_dict)

def login_view(request):
    if(request.method=='POST'):
        Username=request.POST.get('username')
        Password=request.POST.get('password')

        user_session = authenticate(username=Username,password=Password)

        if(user_session):
            if(user_session.is_active):
                login(request,user_session)
                return(request,'login.html')
            else:
                print("")
                return render(request,'login.html')

    return render(request,'login.html')

@login_required
def user_logout(request):
    logout(request)
    return render(request,'home.html')
