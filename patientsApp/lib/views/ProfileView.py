from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic import TemplateView

# models
from patientsApp.models import Patient, PatientsApplications

@method_decorator(login_required, name='dispatch')        
class ProfileView(TemplateView):
    template_name = "patientsApp/profile.html"

    def get_context_data(self, **kwargs):
        context = super(ProfileView, self).get_context_data(**kwargs)

        context['patient'] = Patient.objects.get(id = self.request.user.patient.id)
        applications = PatientsApplications.objects.filter(
                                                        patient_id=self.request.user.patient
                                                    ).order_by('-created_at')
        print(applications)
        context['latestApplication'] = applications[applications.count() - 1]
        context['applicationsCount'] = applications.count()

        return context