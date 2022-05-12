from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

# Create your views here.

@login_required
def index(request):
    if is_patient(request):
        return render(request, "patientsApp/index.html")
    else:
        return HttpResponseRedirect(reverse("login:index"))

def is_patient(request):
    try:
        request.user.patient
    except:
        return False
    else: 
        return True
