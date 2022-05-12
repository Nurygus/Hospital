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
    name = models.TextField()
    login = models.TextField()
    password = models.TextField()
    speciality = models.ForeignKey(Speciality, on_delete=models.CASCADE)
    hospital = models.ForeignKey(Hospital, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    position_at_work = models.TextField()
    user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
