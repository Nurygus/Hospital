from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.views import LoginView 
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.contrib.auth.models import User

# Create your views here.

def index(request):
    return render(request, "login/index.html")

def sign_in(request):
    user = authenticate(username = request.POST['username'], password = request.POST['password'])
    if user is not None:
        user_info = User.objects.get(username = request.POST['username'])
        if not user_info.is_superuser:
            try:
                user_info.doctor
            except:
                login(request, user_info)
                return HttpResponseRedirect(reverse("patientsApp:index"))
            else:
                login(request, user_info)
                return HttpResponseRedirect(reverse("doctorsApp:index"))
    else:
        return HttpResponseRedirect(reverse("login:index"))

class SignUpView(LoginView):
    template_name = "login/signUp.html"

