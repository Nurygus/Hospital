from django.contrib import admin

# Register your models here.
from .models import Doctor
from .models import Speciality
from .models import Hospital
from .models import Department
   
admin.site.register(Doctor)
admin.site.register(Speciality)
admin.site.register(Hospital)
admin.site.register(Department)
