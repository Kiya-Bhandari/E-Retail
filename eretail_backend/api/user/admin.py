'''
    display user app models in the Django admin panel
'''
from django.contrib import admin
from .models import CustomUser
# Register your models here.

class CustomUserAdmin(admin.ModelAdmin):
    list_display = ('id','email','device')
    
admin.site.register(CustomUser,CustomUserAdmin)
