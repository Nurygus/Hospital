from django.urls import path

from . import views

app_name = "reg"

urlpatterns = [
    path('', views.chooseUserType, name='chooseUserType'),
    path('doctor/', views.doctor, name='doctor'),
    path('doctorPost/', views.doctorPost, name='doctorPost'),
    path('card/', views.card, name='card'),
]
