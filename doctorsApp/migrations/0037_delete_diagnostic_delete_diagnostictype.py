# Generated by Django 4.0.4 on 2022-05-13 20:52

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('doctorsApp', '0036_diagnostic_diagnostictype'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Diagnostic',
        ),
        migrations.DeleteModel(
            name='DiagnosticType',
        ),
    ]
