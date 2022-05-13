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
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

# class SurveyType(models.Model):
#     name = models.TextField()

# class Survey(models.Model):
#     name = models.TextField()
#     content = models.TextField()
#     patient_id = models.IntegerField()
#     doctor_id = models.IntegerField()

# class ExaminationType(models.Model):
#     name = models.TextField()

# class Examination(models.Model):
#     name = models.TextField()
#     content = models.TextField()
#     patient_id = models.IntegerField()
#     doctor_id = models.IntegerField()

# class DiagnosticMethod(models.Model):
#     name = models.TextField()

# class DiagnosticType(models.Model):
#     name = models.TextField()
#     diagnostic_method_id = models.IntegerField()

# class Diagnostic(models.Model):
#     diagnostic_type_id = models.IntegerField()
#     name = models.TextField()
#     content = models.TextField()
#     patient_id = models.IntegerField()
#     doctor_id = models.IntegerField()
