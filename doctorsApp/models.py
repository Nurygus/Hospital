from django.db import models

# Create your models here.

class Doctors(models.Model):
    name = models.TextField()
    speciality_id = models.IntegerField()
    hospital_id = models.IntegerField()
    department_id = models.IntegerField()
    position_at_work = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctors'
