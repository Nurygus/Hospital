# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    id = models.BigAutoField(primary_key=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.PositiveSmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    id = models.BigAutoField(primary_key=True)
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class DoctorsappDepartment(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()
    hospital = models.ForeignKey('DoctorsappHospital', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'doctorsapp_department'


class DoctorsappDiagnostic(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()
    content = models.TextField()
    diagnostic_type = models.ForeignKey('DoctorsappDiagnostictype', models.DO_NOTHING)
    doctor = models.ForeignKey('DoctorsappDoctor', models.DO_NOTHING)
    patient = models.ForeignKey('PatientsappPatient', models.DO_NOTHING)
    created_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'doctorsapp_diagnostic'


class DoctorsappDiagnosticmethod(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctorsapp_diagnosticmethod'


class DoctorsappDiagnostictype(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()
    diagnostic_method = models.ForeignKey(DoctorsappDiagnosticmethod, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'doctorsapp_diagnostictype'


class DoctorsappDoctor(models.Model):
    id = models.BigAutoField(primary_key=True)
    position_at_work = models.TextField()
    department = models.ForeignKey(DoctorsappDepartment, models.DO_NOTHING)
    hospital = models.ForeignKey('DoctorsappHospital', models.DO_NOTHING)
    speciality = models.ForeignKey('DoctorsappSpeciality', models.DO_NOTHING)
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'doctorsapp_doctor'


class DoctorsappExamination(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()
    content = models.TextField()
    examination_type = models.ForeignKey('DoctorsappExaminationtype', models.DO_NOTHING, db_column='Examination_type_id')  # Field name made lowercase.
    doctor = models.ForeignKey(DoctorsappDoctor, models.DO_NOTHING)
    patient = models.ForeignKey('PatientsappPatient', models.DO_NOTHING)
    created_at = models.DateTimeField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'doctorsapp_examination'


class DoctorsappExaminationtype(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctorsapp_examinationtype'


class DoctorsappHospital(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()
    country = models.TextField()
    city = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctorsapp_hospital'


class DoctorsappSpeciality(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctorsapp_speciality'


class DoctorsappSurvey(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()
    content = models.TextField()
    doctor = models.ForeignKey(DoctorsappDoctor, models.DO_NOTHING)
    patient = models.ForeignKey('PatientsappPatient', models.DO_NOTHING)
    created_at = models.DateTimeField()
    survey_type = models.ForeignKey('DoctorsappSurveytype', models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'doctorsapp_survey'


class DoctorsappSurveytype(models.Model):
    id = models.BigAutoField(primary_key=True)
    name = models.TextField()

    class Meta:
        managed = False
        db_table = 'doctorsapp_surveytype'


class InHospitalTimes(models.Model):
    date_in = models.DateField()
    date_out = models.DateField()
    patient_id = models.IntegerField()
    doctor_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'in_hospital_times'


class PatientsappPatient(models.Model):
    id = models.BigAutoField(primary_key=True)
    date_of_birth = models.DateField()
    country = models.TextField()
    city = models.TextField()
    etrap = models.TextField()
    work_address = models.TextField()
    work = models.TextField()
    phone = models.TextField()
    doctor = models.ForeignKey(DoctorsappDoctor, models.DO_NOTHING, blank=True, null=True)
    hospital = models.ForeignKey(DoctorsappHospital, models.DO_NOTHING, blank=True, null=True)
    user = models.OneToOneField(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'patientsapp_patient'


class PatientsappPatientsapplications(models.Model):
    id = models.BigAutoField(primary_key=True)
    title = models.CharField(max_length=100)
    message = models.TextField()
    is_opened = models.IntegerField()
    created_at = models.DateTimeField()
    doctor = models.ForeignKey(DoctorsappDoctor, models.DO_NOTHING, blank=True, null=True)
    hospital = models.ForeignKey(DoctorsappHospital, models.DO_NOTHING, blank=True, null=True)
    family_doctor = models.ForeignKey(DoctorsappDoctor, models.DO_NOTHING, blank=True, null=True)
    patient = models.ForeignKey(PatientsappPatient, models.DO_NOTHING, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'patientsapp_patientsapplications'


class Referrals(models.Model):
    hospital_id = models.IntegerField()
    diagnostic_type_id = models.IntegerField()
    patient_id = models.IntegerField()
    doctor_id = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'referrals'


class Requests(models.Model):
    header = models.TextField()
    content = models.TextField()
    patient_id = models.IntegerField()
    hospital_id = models.IntegerField()
    doctor_id = models.IntegerField()
    responded_at = models.DateField()

    class Meta:
        managed = False
        db_table = 'requests'
