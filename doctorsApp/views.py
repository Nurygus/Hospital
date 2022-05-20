from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render
from django.utils import timezone

from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User

from doctorsApp.models import Doctor
from doctorsApp.models import Hospital
from doctorsApp.models import Survey
from doctorsApp.models import SurveyType
from doctorsApp.models import Diagnostic
from doctorsApp.models import DiagnosticType
from doctorsApp.models import Examination
from doctorsApp.models import ExaminationType

from patientsApp.models import Patient
from patientsApp.models import PatientsApplications

from itertools import chain

# Create your views here.

@login_required
def index(request):
    if is_doctor(request):
        return render(request, "doctorsApp/index.html")
    else:
        return HttpResponseRedirect(reverse("login:index"))

@login_required
def is_doctor(request):
    try:
        request.user.doctor
    except:
        return False
    else: 
        return True

@login_required
def globalInbox(request):
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE hospital_id is null AND family_doctor_id = ' + str(request.user.doctor.id))
    messagesCount = len(messages)
    hospitals = Hospital.objects.all()

    context = {
        'messages': messages,
        'messagesCount': messagesCount,
        'hospitals': hospitals
    }
    return render(request, "doctorsApp/globalInbox.html", context)

@login_required
def globalInboxPost(request):
    updateHospitalOfMessage(request)
    return HttpResponseRedirect(reverse("doctorsApp:globalInbox"))

@login_required
def updateHospitalOfMessage(request):
    patientApplication = PatientsApplications.objects.get(id = request.POST.get('message-id'))
    patientApplication.hospital_id = request.POST.get('hospital')
    patientApplication.save()

@login_required
def localInbox(request):
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE hospital_id = ' + str(request.user.doctor.hospital_id) + ' AND doctor_id is null')
    messagesCount = len(messages)
    doctors = Doctor.objects.raw('SELECT * FROM doctorsapp_doctor WHERE hospital_id = ' + str(request.user.doctor.hospital_id))

    context = {
        'messages': messages,
        'messagesCount': messagesCount,
        'doctors': doctors
    }
    return render(request, "doctorsApp/localInbox.html", context) 
    
@login_required
def localInboxPost(request):
    updateDoctorOfMessage(request)
    return HttpResponseRedirect(reverse("doctorsApp:localInbox"))
    
@login_required
def updateDoctorOfMessage(request):
    patientApplication = PatientsApplications.objects.get(id = request.POST.get('message-id'))
    patientApplication.doctor_id = request.POST.get('doctor')
    patientApplication.save()

@login_required
def doctorInbox(request):
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE doctor_id = ' + str(request.user.doctor.id))
    messagesCount = len(messages)

    context = {
        'messages': messages,
        'messagesCount': messagesCount,
    }
    return render(request, "doctorsApp/doctorInbox.html", context)

@login_required
def ownPatientsList(request):
    patients = Patient.objects.raw('SELECT * FROM patientsapp_patient WHERE doctor_id = ' + str(request.user.doctor.id) )
    patientsCount = len(patients)
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE doctor_id = ' + str(request.user.doctor.id) )
    messagesCount = len(messages)

    context = {
        'patients': patients,
        'patientsCount': patientsCount,
        'messages': messages,
        'messagesCount': messagesCount
    }
    return render(request, "doctorsApp/ownPatientsList.html", context)

@login_required
def patientCard(request, patientId):
    surveys = Survey.objects.filter(patient_id = patientId)
    diagnostics = Diagnostic.objects.filter(patient_id = patientId)
    examinations = Examination.objects.filter(patient_id = patientId)

    patientCard = sorted(
        chain(surveys, diagnostics, examinations),
        key=lambda car: car.created_at, reverse=False)
    patientCardCount = len(patientCard)

    context = {
        'patient': Patient.objects.get(id = patientId),
        'patientCard': patientCard,
        'patientCardCount': patientCardCount
    }
    return render(request, "doctorsApp/patientCard.html", context)

@login_required
def newDiagnostic(request, patientId):
    diagnosticTypes = DiagnosticType.objects.filter()

    context = {
        'diagnosticTypes': diagnosticTypes
    }
    return render(request, "doctorsApp/newDiagnostic.html", context)

@login_required
def newDiagnosticPost(request, patientId):
    diagnostic = Diagnostic(name = request.POST.get('name'),
                    content = request.POST.get('content'),
                    doctor_id = request.user.doctor.id, 
                    patient_id = patientId,
                    diagnostic_type_id = request.POST.get('diagnosticType'),
                    created_at = timezone.now())
    diagnostic.save()
    return HttpResponseRedirect(reverse("doctorsApp:patientCard", args=[patientId]))

@login_required
def newExamination(request, patientId):
    examinationTypes = ExaminationType.objects.filter()

    context = {
        'examinationTypes': examinationTypes
    }
    return render(request, "doctorsApp/newExamination.html", context)

@login_required
def newExaminationPost(request, patientId):
    examination = Examination(name = request.POST.get('name'),
                    content = request.POST.get('content'),
                    doctor_id = request.user.doctor.id, 
                    patient_id = patientId,
                    Examination_type_id = request.POST.get('examinationType'),
                    created_at = timezone.now())
    examination.save()
    return HttpResponseRedirect(reverse("doctorsApp:patientCard", args=[patientId]))

@login_required
def newSurvey(request, patientId):
    surveyTypes = SurveyType.objects.filter()

    context = {
        'surveyTypes': surveyTypes
    }
    return render(request, "doctorsApp/newSurvey.html", context)

@login_required
def newSurveyPost(request, patientId):
    survey = Survey(name = request.POST.get('name'),
                    content = request.POST.get('content'),
                    doctor_id = request.user.doctor.id, 
                    patient_id = patientId,
                    survey_type_id = request.POST.get('surveyType'),
                    created_at = timezone.now())
    survey.save()
    return HttpResponseRedirect(reverse("doctorsApp:patientCard", args=[patientId]))
