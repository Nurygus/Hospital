from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import TemplateView
from django.views.generic.edit import FormView
from django.urls import reverse, reverse_lazy
from django.utils import timezone

from patientsApp.forms import ApplicationForm

# Create your views here.

@login_required
def index(request):
    print(timezone.now())
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
class SendRequestView(TemplateView):
    template_name = "patientsApp/create_request.html"

class AboutUsView(TemplateView):
    template_name = "main/index.html"

    # def get(self, request):
    #     return HttpResponse("test")

    # def post(self, request):
    #     # do something
    #     return redirect("test")

class ContactUsView(TemplateView):
    template_name = "main/index.html"