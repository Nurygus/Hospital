# Generated by Django 4.0.4 on 2022-05-12 08:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('doctorsApp', '0019_hospital_speciality_delete_doctor'),
    ]

    operations = [
        migrations.CreateModel(
            name='Department',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('hospital', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.hospital')),
            ],
        ),
    ]