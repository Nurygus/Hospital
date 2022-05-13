from django import forms
from django.contrib.auth.models import User
from django.utils import timezone

from patientsApp.models import Patient, PatientsApplications

class ApplicationForm(forms.Form):
    title = forms.CharField()
    message = forms.CharField(widget=forms.Textarea)

    def saveToDatabase(self, request):
        application = PatientsApplications.objects.create(
            title = self.cleaned_data['title'], 
            message = self.cleaned_data['message'], 
            is_opened = True,
            created_at = timezone.now(),
            family_doctor = getattr(request.user, 'doctor', None),
            patient = request.user.patient,     
        )
        application.save()
   