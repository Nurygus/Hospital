from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render

from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User

from doctorsApp.models import Doctor
from doctorsApp.models import Hospital
from patientsApp.models import Patient
from patientsApp.models import PatientsApplications


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
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE hospital_id is null')
    hospitals = Hospital.objects.all()

    context = {
        'messages': messages,
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
    doctors = Doctor.objects.raw('SELECT * FROM doctorsapp_doctor WHERE hospital_id = ' + str(request.user.doctor.hospital_id))

    context = {
        'messages': messages,
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

    context = {
        'messages': messages
    }
    return render(request, "doctorsApp/doctorInbox.html", context)

@login_required
def ownPatientsList(request):
    patients = Patient.objects.raw('SELECT * FROM patientsapp_patient WHERE doctor_id = ' + str(request.user.doctor.id) )
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE doctor_id = ' + str(request.user.doctor.id) )

    context = {
        'patients': patients,
        'messages': messages
    }
    return render(request, "doctorsApp/ownPatientsList.html", context)

@login_required
def patientCard(request, patientId):
    return render(request, "doctorsApp/doctorInbox.html")
    
