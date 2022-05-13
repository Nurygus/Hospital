from django.db import models
from doctorsApp.models import Hospital, Doctor
from django.conf import settings
from django.contrib.auth.models import User

# Create your models here.

class Patient(models.Model):
    date_of_birth = models.DateField()
    country = models.TextField()
    city = models.TextField()
    etrap = models.TextField()
    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE, blank=True, null=True)
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE, blank=True, null=True)
    work_address = models.TextField()
    work = models.TextField()
    phone = models.TextField()
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

class PatientsApplications(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=100)
    message = models.TextField()
    is_opened = models.IntegerField()
    created_at = models.DateTimeField()
    doctor = models.ForeignKey(Doctor, models.DO_NOTHING, blank=True, null=True)
    hospital = models.ForeignKey(Hospital, models.DO_NOTHING, blank=True, null=True)
    user = models.OneToOneField(settings.AUTH_USER_MODEL, models.DO_NOTHING)
