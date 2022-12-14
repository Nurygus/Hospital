# Generated by Django 4.0.4 on 2022-05-12 07:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('doctorsApp', '0008_delete_doctor'),
    ]

    operations = [
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
    ]
