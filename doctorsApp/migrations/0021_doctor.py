# Generated by Django 4.0.4 on 2022-05-12 08:06

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('doctorsApp', '0020_department'),
    ]

    operations = [
        migrations.CreateModel(
            name='Doctor',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.TextField()),
                ('login', models.TextField()),
                ('password', models.TextField()),
                ('position_at_work', models.TextField()),
                ('department', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.department')),
                ('hospital', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.hospital')),
                ('speciality', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='doctorsApp.speciality')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
