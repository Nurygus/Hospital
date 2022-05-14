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
    path('ownPatientsList/<int:patientId>/newDiagnostic', views.newDiagnostic, name='newDiagnostic'),
    path('ownPatientsList/<int:patientId>/newDiagnosticPost', views.newDiagnosticPost, name='newDiagnosticPost'),
    path('ownPatientsList/<int:patientId>/newExamination', views.newExamination, name='newExamination'),
    path('ownPatientsList/<int:patientId>/newExaminationPost', views.newExaminationPost, name='newExaminationPost'),
    path('ownPatientsList/<int:patientId>/newSurvey', views.newSurvey, name='newSurvey'),
    path('ownPatientsList/<int:patientId>/newSurveyPost', views.newSurveyPost, name='newSurveyPost'),
]
