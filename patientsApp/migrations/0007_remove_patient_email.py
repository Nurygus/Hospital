# Generated by Django 4.0.4 on 2022-05-12 11:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('patientsApp', '0006_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='patient',
            name='email',
        ),
    ]
