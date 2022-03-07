'''
defines the urls for the user app
'''
from django.urls import path,include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'', views.UserViewSet)

urlpatterns = [
    # path('signup/', views.signup, name='signup'),
    path('signin/', views.signin, name='signin'),
    path('', include(router.urls))
]
