from django.db import models
from django.conf import settings
from django.contrib.auth.models import User

# Create your models here.

class Speciality(models.Model):
    name = models.TextField()

class Hospital(models.Model):
    name = models.TextField()
    country = models.TextField()
    city = models.TextField()

class Department(models.Model):
    name = models.TextField()
    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE)

class Doctor(models.Model):
    speciality = models.ForeignKey(Speciality, on_delete=models.CASCADE)
    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    position_at_work = models.TextField()
    is_consulting = models.IntegerField(blank = True, null = True)
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

class SurveyType(models.Model):
    name = models.TextField()

from patientsApp.models import Patient

class Survey(models.Model):
    name = models.TextField()
    content = models.TextField()
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    survey_type = models.ForeignKey(SurveyType, on_delete=models.CASCADE, blank=True, null=True)
    created_at = models.DateTimeField(blank=True, null=True)

class ExaminationType(models.Model):
    name = models.TextField()

class Examination(models.Model):
    name = models.TextField()
    content = models.TextField()
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    Examination_type = models.ForeignKey(ExaminationType, on_delete=models.CASCADE)
    created_at = models.DateTimeField(blank=True, null=True)

class DiagnosticMethod(models.Model):
    name = models.TextField()

class DiagnosticType(models.Model):
    name = models.TextField()
    diagnostic_method = models.ForeignKey(DiagnosticMethod, on_delete=models.CASCADE)

class Diagnostic(models.Model):
    diagnostic_type = models.ForeignKey(DiagnosticType, on_delete=models.CASCADE)
    name = models.TextField()
    content = models.TextField()
    patient = models.ForeignKey(Patient, on_delete=models.CASCADE)
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    created_at = models.DateTimeField(blank=True, null=True)
