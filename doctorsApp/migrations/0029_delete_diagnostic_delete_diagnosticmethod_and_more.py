# Generated by Django 4.0.4 on 2022-05-13 20:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('doctorsApp', '0028_diagnostic_diagnosticmethod_diagnostictype_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Diagnostic',
        ),
        migrations.DeleteModel(
            name='DiagnosticMethod',
        ),
        migrations.DeleteModel(
            name='DiagnosticType',
        ),
        migrations.DeleteModel(
            name='Examination',
        ),
        migrations.DeleteModel(
            name='ExaminationType',
        ),
        migrations.DeleteModel(
            name='Survey',
        ),
        migrations.DeleteModel(
            name='SurveyType',
        ),
    ]