'''
    display product app models in the Django admin panel
'''
from django.contrib import admin
from .models import Product
# Register your models here.

class ProductAdmin(admin.ModelAdmin):
    list_display = ('id','name','price','stock')
    
admin.site.register(Product,ProductAdmin)