# Generated by Django 4.0.4 on 2022-05-13 10:12

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('doctorsApp', '0025_department_hospital_doctor_department_hospital'),
        ('patientsApp', '0014_merge_20220513_1511'),
    ]

    operations = [
        migrations.AlterField(
            model_name='patientsapplications',
            name='doctor',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='doctorsApp.doctor'),
        ),
        migrations.AlterField(
            model_name='patientsapplications',
            name='hospital',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='doctorsApp.hospital'),
        ),
        migrations.AlterField(
            model_name='patientsapplications',
            name='user',
            field=models.OneToOneField(on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL),
        ),
    ]
