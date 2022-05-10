from django.db import models

# Create your models here.

class Patients(models.Model):
    name = models.TextField()
    date_of_birth = models.DateField()
    country = models.TextField()
    city = models.TextField()
    etrap = models.TextField()
    hospital_id = models.IntegerField()
    doctor_id = models.IntegerField()
    work_address = models.TextField()
    work = models.TextField()
    phone = models.TextField()
    email = models.TextField()
