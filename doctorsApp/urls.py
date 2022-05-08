from django.urls import path

from . import views

app_name = "doctorsApp"

urlpatterns = [
    path('', views.index, name='index'),
]
