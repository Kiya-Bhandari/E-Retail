'''
    display category app  models in the Django admin panel
'''
from django.contrib import admin
from .models import Category
# Register your models here.

admin.site.register(Category)
