# Generated by Django 4.0.4 on 2022-05-13 21:45

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('doctorsApp', '0041_diagnostic_created_at_examination_created_at_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='survey',
            name='survey_type',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.surveytype'),
        ),
    ]
