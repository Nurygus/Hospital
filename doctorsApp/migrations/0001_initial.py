# Generated by Django 4.0.4 on 2022-05-10 15:31

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Department',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('hospital_id', models.IntegerField()),
            ],
            options={
                'db_table': 'departments',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Doctor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('login', models.TextField()),
                ('password', models.TextField()),
                ('speciality_id', models.IntegerField()),
                ('hospital_id', models.IntegerField()),
                ('department_id', models.IntegerField()),
                ('position_at_work', models.TextField()),
            ],
            options={
                'db_table': 'doctors',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Hospital',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('country', models.TextField()),
                ('city', models.TextField()),
            ],
            options={
                'db_table': 'hospitals',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Speciality',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
            ],
            options={
                'db_table': 'specialities',
                'managed': False,
            },
        ),
    ]
