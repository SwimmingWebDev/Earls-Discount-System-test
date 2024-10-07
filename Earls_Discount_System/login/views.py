from django.shortcuts import render

from django.http import HttpResponse
from django.template.loader import get_template
# Simple placeholder view for the login page

def login_view(request):
    try:
        get_template('login/login.html')
    except Exception as e:
        print(e)
    return render(request, 'login/login.html')