# Generated by Django 4.0.4 on 2022-05-13 10:32

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('patientsApp', '0015_alter_patientsapplications_doctor_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='patientsapplications',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
        ),
    ]