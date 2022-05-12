from django.shortcuts import render
from django.contrib.auth import authenticate
from django.contrib.auth.views import LoginView 
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

# Create your views here.

def index(request):
    return render(request, "login/index.html")

def sign_in(request):
    user = authenticate(username = request.POST['username'], password = request.POST['password'])
    if user is not None:
        return HttpResponseRedirect(reverse("doctorsApp:index"))
    else:
        return HttpResponseRedirect(reverse("login:index"))

class SignUpView(LoginView):
    template_name = "login/signUp.html"

