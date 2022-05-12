from django.db import models
from doctorsApp.models import Hospital, Doctor

# Create your models here.

class Patient(models.Model):
    name = models.TextField()
    login = models.TextField()
    password = models.TextField()
    date_of_birth = models.DateField()
    country = models.TextField()
    city = models.TextField()
    etrap = models.TextField()
    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE)
    doctor = models.ForeignKey(Doctor, on_delete=models.CASCADE)
    work_address = models.TextField()
    work = models.TextField()
    phone = models.TextField()
    email = models.TextField()
