from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import TemplateView
from django.views.generic.edit import FormView
from django.urls import reverse, reverse_lazy
from django.utils import timezone

from patientsApp.forms import Patient, ApplicationForm
from patientsApp.models import PatientsApplications
from doctorsApp.models import Survey, Diagnostic, Examination

from itertools import chain

# Create your views here.

@login_required
def index(request):
    if isPatient(request):
        return render(request, "patientsApp/index.html")
    else:
        return HttpResponseRedirect(reverse("login:index"))

def isPatient(request):
    try:
        request.user.patient
    except:
        return False
    else: 
        return True

@method_decorator(login_required, name='dispatch')
class CreateRequestView(FormView):
    template_name = "patientsApp/create_request.html"
    form_class = ApplicationForm
    success_url = reverse_lazy("patientsApp:index")

    def form_valid(self, form):
        form.saveToDatabase(self.request)
        return super().form_valid(form)

@method_decorator(login_required, name='dispatch')
class CreatedApplicationsView(TemplateView):
    template_name = "patientsApp/created_applications.html"

    def get_context_data(self, **kwargs):
        context = super(CreatedApplicationsView, self).get_context_data(**kwargs)
        context['latest_applications_list'] = PatientsApplications.objects.filter(
            patient_id=self.request.user.patient
        ).order_by('-created_at')[:5]
        return context

@method_decorator(login_required, name='dispatch')
class CardView(TemplateView):
    template_name = "patientsApp/card.html"

    def get_context_data(self, **kwargs):
        context = super(CardView, self).get_context_data(**kwargs)
        
        surveys = Survey.objects.filter(patient_id = self.request.user.patient.id)
        diagnostics = Diagnostic.objects.filter(patient_id = self.request.user.patient.id)
        examinations = Examination.objects.filter(patient_id = self.request.user.patient.id)
        
        patientCard = sorted(
            chain(surveys, diagnostics, examinations),
            key=lambda car: car.created_at, reverse=False)

        context['patient'] = Patient.objects.get(id = self.request.user.patient.id),
        context['patientCard'] = patientCard
        
        return context

@method_decorator(login_required, name='dispatch')        
class SendRequestView(TemplateView):
    template_name = "patientsApp/create_request.html"