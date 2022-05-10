from django.db import models

# Create your models here.

class Doctor(models.Model):
    name = models.TextField()
    login = models.TextField()
    password = models.TextField()
    speciality_id = models.IntegerField()
    hospital_id = models.IntegerField()
    department_id = models.IntegerField()
    position_at_work = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctors'

class Speciality(models.Model):
    name = models.TextField()

    class Meta:
        managed = False
        db_table = 'specialities'

class Hospital(models.Model):
    name = models.TextField()
    country = models.TextField()
    city = models.TextField()

    class Meta:
        managed = False
        db_table = 'hospitals'

class Department(models.Model):
    name = models.TextField()
    hospital_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'departments'
