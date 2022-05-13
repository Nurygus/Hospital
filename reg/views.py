from django.shortcuts import render
from django.template import Context
from django.urls import reverse
from django.http import HttpResponse, HttpResponseRedirect

from django.contrib.auth.models import User
from django.contrib.auth.hashers import make_password

from doctorsApp.models import Doctor, Speciality, Hospital, Department
from patientsApp.models import Patient

# Create your views here.

def chooseUserType(request):
    return render(request, "reg/chooseUserType.html")

def doctor(request):
    specalities = Speciality.objects.all()
    hospitals = Hospital.objects.all()
    departments = Department.objects.all()

    context = {
        'specalities': specalities,
        'hospitals': hospitals,
        'departments': departments
    }
    return render(request, "reg/doctor.html", context)

def doctorPost(request):
    insertUser(request)
    insertDoctor(request)
    return HttpResponseRedirect(reverse("login:index"))

def insertUser(request):
    user = User(username = request.POST.get('username'),
                password = make_password(request.POST.get('password')),
                email = request.POST.get('email'))
    user.save()

def insertDoctor(request):
    doctor = Doctor(position_at_work = request.POST.get('position_at_work'),
                    department_id = request.POST.get('department'), 
                    hospital_id = request.POST.get('hospital'),
                    speciality_id = request.POST.get('specality'),
                    user_id = User.objects.latest('id').id)
    doctor.save()

def card(request):
    return render(request, "reg/card.html")
    
def cardPost(request):
    insertUser(request)
    insertPatient(request)
    return HttpResponseRedirect(reverse("login:index"))

def insertPatient(request):
    patient = Patient(date_of_birth = request.POST.get('date_of_birth'),
                    country = request.POST.get('country'),
                    city = request.POST.get('city'), 
                    etrap = request.POST.get('etrap'),
                    work_address = request.POST.get('work_address'),
                    work = request.POST.get('work'),
                    phone = request.POST.get('phone'),
                    user_id = User.objects.latest('id').id)
    patient.save()
