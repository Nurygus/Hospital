from django.urls import path

from . import views
from patientsApp.views import CreateRequestView, CreatedApplicationsView, SendRequestView, AboutUsView, ContactUsView

app_name = "patientsApp"

urlpatterns = [
    path('', views.index, name='index'),
    path('create_request', CreateRequestView.as_view(), name='create_request'),
    path('send_request', SendRequestView.as_view(), name='send_request'),
    path('created_applications', CreatedApplicationsView.as_view(), name='created_applications'),

    # not used
    path('about_us', AboutUsView.as_view(), name='about_us'),
    path('contact_us', ContactUsView.as_view(), name='contact_us'),
]
