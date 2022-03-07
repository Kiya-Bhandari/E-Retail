from rest_framework import routers
from django.urls import path, include
from .views import ProductFilter,ProductSearch
from . import views

router = routers.DefaultRouter()
router.register(r'All/', views.ProductViewSet)


urlpatterns = [
    path('<str:category>/',ProductFilter.as_view(),name="product_filter"),
    path('searchProduct/byName/',ProductSearch.as_view(),name="product_search"),
    path('', include(router.urls))
]
