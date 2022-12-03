# Generated by Django 4.0.4 on 2022-05-13 20:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('patientsApp', '0017_patientsapplications_family_doctor_and_more'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='patientsapplications',
            name='user',
        ),
        migrations.AddField(
            model_name='patientsapplications',
            name='patient',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='patientsApp.patient'),
        ),
    ]
