# Generated by Django 4.0.4 on 2022-05-13 18:50

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('doctorsApp', '0025_department_hospital_doctor_department_hospital'),
        ('patientsApp', '0016_alter_patientsapplications_user'),
    ]

    operations = [
        migrations.AddField(
            model_name='patientsapplications',
            name='family_doctor',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='family_doctor', to='doctorsApp.doctor'),
        ),
        migrations.AlterField(
            model_name='patientsapplications',
            name='doctor',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, related_name='doctor', to='doctorsApp.doctor'),
        ),
    ]
