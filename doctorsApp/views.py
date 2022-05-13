from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse
from django.shortcuts import render

from django.contrib.auth.decorators import login_required

from doctorsApp.models import Hospital
from patientsApp.models import PatientsApplications


# Create your views here.

@login_required
def index(request):
    if is_doctor(request):
        return render(request, "doctorsApp/index.html")
    else:
        return HttpResponseRedirect(reverse("login:index"))

def is_doctor(request):
    try:
        request.user.doctor
    except:
        return False
    else: 
        return True

def globalInbox(request):
    messages = PatientsApplications.objects.raw('SELECT * FROM patientsapp_patientsapplications WHERE hospital_id = null')
    hospitals = Hospital.objects.all()

    context = {
        'messages': messages,
        'hospitals': hospitals
    }
    return render(request, "doctorsApp/globalInbox.html", context)

def globalInboxPost(request):
    updateHospitalOfMessage(request)
    return HttpResponseRedirect(reverse("doctorsApp:globalInbox"))

def updateHospitalOfMessage(request):
    patientApplication = PatientsApplications.objects.get(id = 1)
    patientApplication.hospital_id = request.POST.get('hospital')
    patientApplication.save()

def localInbox(request):
    return render(request, "doctorsApp/localInbox.html") 
