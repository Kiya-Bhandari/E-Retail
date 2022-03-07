'''
    display order app models in the Django admin panel
'''
from django.contrib import admin
from .models import Order,Cart,CartProduct

class CartAdmin(admin.ModelAdmin):
    list_display = ('id','user','total','is_ordered')

admin.site.register(Cart,CartAdmin)

class CartProductAdmin(admin.ModelAdmin):
    list_display = ('id','cart','get_products','price','quantity','subtotal')

admin.site.register(CartProduct,CartProductAdmin)

class OrderAdmin(admin.ModelAdmin):
    list_display = ('id','cart','transaction_id','total')

admin.site.register(Order,OrderAdmin)