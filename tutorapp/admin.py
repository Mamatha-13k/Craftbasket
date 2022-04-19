from django.contrib import admin

from .models import craft_arts
admin.site.register(craft_arts)

from .models import TutorRegModel
admin.site.register(TutorRegModel)

from .models import TutorCoursesModel
admin.site.register(TutorCoursesModel)
# Register your models here.
