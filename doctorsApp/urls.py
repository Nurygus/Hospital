from django.urls import path

from . import views

app_name = "doctorsApp"

urlpatterns = [
    path('', views.index, name='index'),
    path('globalInbox/', views.globalInbox, name='globalInbox'),
    path('globalInboxPost/', views.globalInboxPost, name='globalInboxPost'),
    path('localInbox/', views.localInbox, name='localInbox'),
    path('localInboxPost/', views.localInboxPost, name='localInboxPost'),
    path('doctorInbox/', views.doctorInbox, name='doctorInbox'),
    path('ownPatientsList/', views.ownPatientsList, name='ownPatientsList'),
    path('ownPatientsList/<int:patientId>/', views.patientCard, name='patientCard'),
]
