# Generated by Django 4.0.4 on 2022-05-12 08:55

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('patientsApp', '0003_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='patient',
            name='login',
        ),
        migrations.RemoveField(
            model_name='patient',
            name='name',
        ),
        migrations.RemoveField(
            model_name='patient',
            name='password',
        ),
    ]
