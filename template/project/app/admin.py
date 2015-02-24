from django.contrib import admin
from __djapp__.models import ExampleModel

class ExampleModelAdmin(admin.ModelAdmin):
    pass


admin.site.register(ExampleModel, ExampleModelAdmin)
