from django.db import models

# Create your models here.

class Patient(models.Model):
    name = models.TextField()
    login = models.TextField()
    password = models.TextField()
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

    class Meta:
        managed = False
        db_table = 'patients'
