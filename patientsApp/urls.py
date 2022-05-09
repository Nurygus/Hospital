from django.urls import path

from . import views

app_name = "patientsApp"

urlpatterns = [
    path('', views.index, name='index'),
    path('contact-us.html', views.index, name='contact-us'),
    path('', views.index, name='index'),
]
