from django.urls import path

from . import views

from login.views import SignUpView

app_name = "login"

urlpatterns = [
    path('', views.index, name='index'),
    path('sign_in/', views.sign_in, name='sign_in'),
    path('signUp', SignUpView.as_view(), name='signUp'),
]
