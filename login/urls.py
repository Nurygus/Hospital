from django.urls import path

from . import views

app_name = "login"

urlpatterns = [
    path('', views.index, name='index'),
    path('sign_in/', views.sign_in, name='sign_in'),
]
