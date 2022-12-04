from django.urls import path

from . import views
from patientsApp.views import ( 
                                CreateRequestView, CreatedApplicationsView,
                                SendRequestView, CardView, ProfileView
                                )

app_name = "patientsApp"

urlpatterns = [
    path('', views.index, name='index'),
    path('create_request', CreateRequestView.as_view(), name='create_request'),
    path('send_request', SendRequestView.as_view(), name='send_request'),
    path('created_applications', CreatedApplicationsView.as_view(), name='created_applications'),
    path('card', CardView.as_view(), name='card'),
    path('profile', ProfileView.as_view(), name='profile'),
]
