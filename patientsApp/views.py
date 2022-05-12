from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from django.http import HttpResponse, HttpResponseRedirect
from django.views.generic import TemplateView
from django.views.generic.edit import FormView
from django.urls import reverse, reverse_lazy

from patientsApp.forms import ApplicationForm

# Create your views here.

# @login_required
def index(request):
    # if isPatient(request):
    return render(request, "patientsApp/index.html")
    # else:
    #     return HttpResponseRedirect(reverse("login:index"))

def isPatient(request):
    try:
        request.user.patient
    except:
        return False
    else: 
        return True

class CreateRequestView(FormView):
    template_name = "patientsApp/create_request.html"
    form_class = ApplicationForm
    success_url = reverse_lazy("patientsApp:index")

    def form_valid(self, form):
        # This method is called when valid form data has been POSTed.
        # It should return an HttpResponse.
        form.send_email()
        return super().form_valid(form)
    # def form_valid(self, form):
    #     self.send_mail(form.cleaned_data)
    #     return super(ContactView, self).form_valid(form)

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