'''
defines the urls for the order app
'''
from django.urls import path,include
from . import views


urlpatterns = [
    path('add-to-cart/', views.add_to_cart, name='addToCart'),
    path('get-items/',views.my_cart,name='myCart'),
    path('increase-quantity/',views.increase_quantity,name='increaseQuantity'),
    path('decrease-quantity/',views.decrease_quantity,name='decreaseQuantity'),
    path('remove-item/',views.remove_product,name='removeProduct'),
    path('cart-total-product/',views.total_product,name='totalProduct'),
    path('add-order/',views.add_order,name='addOrder'),
    path('get-order/<str:token>/',views.get_order,name='getOrder')
]
