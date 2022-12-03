from django.contrib import admin

# Register your models here.
from .models import Doctor
from .models import Speciality
from .models import Hospital
from .models import Department
from .models import Survey
from .models import SurveyType
from .models import Examination
from .models import ExaminationType
from .models import Diagnostic
from .models import DiagnosticType
from .models import DiagnosticMethod

   
admin.site.register(Doctor)
admin.site.register(Speciality)
admin.site.register(Hospital)
admin.site.register(Department)
admin.site.register(Survey)
admin.site.register(SurveyType)
admin.site.register(Examination)
admin.site.register(ExaminationType)
admin.site.register(Diagnostic)
admin.site.register(DiagnosticType)
admin.site.register(DiagnosticMethod)
