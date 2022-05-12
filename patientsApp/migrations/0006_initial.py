# Generated by Django 4.0.4 on 2022-05-12 11:43

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('doctorsApp', '0022_remove_doctor_login_remove_doctor_name_and_more'),
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('patientsApp', '0005_delete_patient'),
    ]

    operations = [
        migrations.CreateModel(
            name='Patient',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_of_birth', models.DateField()),
                ('country', models.TextField()),
                ('city', models.TextField()),
                ('etrap', models.TextField()),
                ('work_address', models.TextField()),
                ('work', models.TextField()),
                ('phone', models.TextField()),
                ('email', models.TextField()),
                ('doctor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.doctor')),
                ('hospital', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.hospital')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
