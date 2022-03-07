from django.urls import path,include
from . import views

urlpatterns = [
    path('get-token/',views.generate_token,name='tokenGenerate'),
    path('process/',views.process_payment,name='processPayment'),
]