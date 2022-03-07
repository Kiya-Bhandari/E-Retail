'''
    defines the views for the order app
'''
from rest_framework.decorators import api_view, permission_classes
from rest_framework.authtoken.models import Token
from rest_framework.permissions import AllowAny
from rest_framework.status import (
    HTTP_400_BAD_REQUEST,
    HTTP_200_OK,

)
from rest_framework.response import Response
from django.db.models import Sum
from django.contrib.auth import get_user_model
from django.db.models import Q
from api.product.models import Product
from .models import Cart,CartProduct,Order
from .serializers import OrderSerializer,CartSerializer,CartProductSerializer

user_model = get_user_model()

def add_to_cart_general(user_obj,product_id,quantity=1):
    '''
        return True when cart is created or products are added to cart else it returns False
    '''
    product_obj = Product.objects.get(id=product_id)
    cart_cart = Cart.objects.filter(Q(user = user_obj) & Q(is_ordered=False)).first()
    try:
        if cart_cart:
            this_product_in_cart = cart_cart.cartproduct_set.filter(product=product_obj)
            if this_product_in_cart.exists():
                cartprod_uct = this_product_in_cart.first()
                cartprod_uct.quantity += quantity
                cartprod_uct.subtotal +=product_obj.price*quantity
                cartprod_uct.save()
                cart_cart.total +=product_obj.price*quantity
                cart_cart.save()
            else:
                cart_product_new=CartProduct.objects.create(
                    cart = cart_cart,
                    price  =product_obj.price,
                    quantity = quantity,
                    subtotal = product_obj.price*quantity
                )
                cart_product_new.product.add(product_obj)
                cart_cart.total +=product_obj.price*quantity
                cart_cart.save()
        else:
            Cart.objects.create(user=user_obj,total=0)
            new_cart = Cart.objects.filter(Q(user=user_obj) & Q(is_ordered=False)).first()
            cart_product_new=CartProduct.objects.create(
                cart = new_cart,
                price  =product_obj.price,
                quantity = quantity,
                subtotal = product_obj.price*quantity
            )
            cart_product_new.product.add(product_obj)
            new_cart.total +=product_obj.price*quantity
            new_cart.save()
        return True
    except Exception as ex:
        print(ex)
        return False

@api_view(["GET"])
@permission_classes((AllowAny,))
def total_product(request):
    '''
        return total number of products in cart
    '''
    device = request.GET['device']
    user_id = request.GET['userId']
    cart_total_product = {}
    if device and user_id == 'false':
        device_id,_= user_model.objects.get_or_create(device=device)
        cart_device_obj= Cart.objects.filter(Q(user=device_id) & Q(is_ordered=False)).first()
        if cart_device_obj is not None:
            cart_device_product = CartProduct.objects.filter(cart=cart_device_obj.id)
            cart_total_product = cart_device_product.aggregate(total_product=Sum('quantity'))
    else :
        cart_obj= Cart.objects.filter(Q(user=user_id) & Q(is_ordered=False)).first()
        if cart_obj is not None:
            cart_product = CartProduct.objects.filter(cart=cart_obj.id)
            cart_total_product = cart_product.aggregate(total_product=Sum('quantity'))
    return Response(cart_total_product,status=HTTP_200_OK)


@api_view(["GET"])
@permission_classes((AllowAny,))
def my_cart(request):
    '''
        returns list of products in cart
    '''
    device = request.GET['device']
    user_id = request.GET['userId']
    device_id = user_model.objects.get(device=device)
    all_data=[]
    if device and user_id != 'false':
        cart_device_obj= Cart.objects.filter(Q(user=device_id) & Q(is_ordered=False))
        if cart_device_obj.exists():
            cart_device_serializer = CartSerializer(cart_device_obj,many=True)
            for cart in cart_device_serializer.data:
                cart_device_product_obj = CartProduct.objects.filter(cart=cart['id'])
                for cart_device_product in cart_device_product_obj :
                    for product in cart_device_product.product.all():
                        user_obj = user_model.objects.get(id=user_id)
                        add_to_cart_general(user_obj,product.id,cart_device_product.quantity)
            cart_device_change_obj = Cart.objects.get(Q(user=device_id) & Q(is_ordered=False))
            cart_device_change_obj.is_ordered = True
            cart_device_change_obj.save()
            cart_obj= Cart.objects.filter(Q(user=user_id) & Q(is_ordered=False))
            if cart_obj.exists():
                cart_serializer = CartSerializer(cart_obj,many=True)
                for cart in cart_serializer.data:
                    cart_product = CartProduct.objects.filter(cart=cart['id'])
                    cart_product_serializer = CartProductSerializer(cart_product,many=True)
                    cart['cartproduct'] = cart_product_serializer.data
                    all_data.append(cart)
        else:
            cart_obj= Cart.objects.filter(Q(user=user_id) & Q(is_ordered=False))
            if cart_obj.exists():
                cart_serializer = CartSerializer(cart_obj,many=True)
                for cart in cart_serializer.data:
                    cart_product = CartProduct.objects.filter(cart=cart['id'])
                    cart_product_serializer = CartProductSerializer(cart_product,many=True)
                    cart['cartproduct'] = cart_product_serializer.data
                    all_data.append(cart)
    else:
        cart_obj= Cart.objects.filter(Q(user=device_id) & Q(is_ordered=False))
        if cart_obj.exists():
            cart_serializer = CartSerializer(cart_obj,many=True)
            for cart in cart_serializer.data:
                cart_product = CartProduct.objects.filter(cart=cart['id'])
                cart_product_serializer = CartProductSerializer(cart_product,many=True)
                cart['cartproduct'] = cart_product_serializer.data
                all_data.append(cart)
    return Response({'cartData' : all_data},status=HTTP_200_OK)

@api_view(["POST"])
@permission_classes((AllowAny,))
def add_to_cart(request):
    '''
        creates new cart or add products in existing cart.
    '''
    try:
        user_id = request.data['authData']['userId']
        user_obj = user_model.objects.get(id=user_id)
    except KeyError:
        user_obj,_= user_model.objects.get_or_create(device=request.data['authData']['device'])

    product_id = request.data['product_id']

    response = add_to_cart_general(user_obj,product_id)
    if response is True:
        return Response({'success' : 'Product add to card successfully'},status=HTTP_200_OK)
    else:
        return Response({'error' : 'Product Not add!Somthing is Wrong'},
                        status= HTTP_400_BAD_REQUEST)

@api_view(["POST"])
@permission_classes((AllowAny,))
def increase_quantity(request):
    '''
        increases quantity of product and returns subtotal,total and cart product id.
    '''
    cp_obj = CartProduct.objects.get(id=request.data['cart_product_id'])
    cart_obj = cp_obj.cart
    cp_obj.quantity +=1
    cp_obj.subtotal += cp_obj.price
    cp_obj.save()
    cart_obj.total += cp_obj.price
    cart_obj.save()
    return Response({'success' : 'Cart Updated','cart_product_id' : request.data['cart_product_id'],
                    'subtotal' : cp_obj.subtotal,'total':cart_obj.total},status=HTTP_200_OK)

@api_view(["POST"])
@permission_classes((AllowAny,))
def decrease_quantity(request):
    '''
        decreases quantity of product and returns subtotal,total and cart product id.
    '''
    cp_obj = CartProduct.objects.get(id=request.data['cart_product_id'])
    cart_obj = cp_obj.cart

    cp_obj.quantity -=1
    cp_obj.subtotal -= cp_obj.price
    cp_obj.save()

    cart_obj.total -= cp_obj.price
    cart_obj.save()
    if cp_obj.quantity == 0:
        cp_obj.delete()
    return Response({'success' : 'Cart Updated','cart_product_id' : request.data['cart_product_id'],
                    'subtotal' : cp_obj.subtotal,'total':cart_obj.total},status=HTTP_200_OK)

@api_view(["POST"])
@permission_classes((AllowAny,))
def remove_product(request):
    '''
        remove quantity of product and returns quantity,total and cart product id.
    '''
    cp_obj = CartProduct.objects.get(id=request.data['cart_product_id'])
    cart_obj = cp_obj.cart
    cart_obj.total -= cp_obj.price
    cart_obj.save()
    cp_obj.delete()
    return Response({'success' : 'Item removed','cart_product_id' : request.data['cart_product_id'],
                    'quantity' : cp_obj.quantity,'total':cart_obj.total},status=HTTP_200_OK)

@api_view(["POST"])
def add_order(request):
    '''
        adds cart product into order table after payment gets successful.
    '''
    transaction_id = request.POST['transaction_id']
    amount = request.POST['amount']
    cart_id = request.POST['cart_id']
    cart_obj = Cart.objects.get(id=cart_id)
    cartproduct_obj = CartProduct.objects.filter(cart = cart_obj.id)
    for cartproduct in cartproduct_obj :
        for product in cartproduct.product.all():
            product_obj = Product.objects.get(id = product.id)
            product_obj.stock -= cartproduct.quantity
            product_obj.save()

    cart_obj.is_ordered = True
    cart_obj.save()
    Order.objects.create(
        cart = cart_obj,
        transaction_id = transaction_id,
        total = amount
    )
    return Response({'message' : 'Order placed Successfully.Redirecting...','success':True})

@api_view(["GET"])
@permission_classes((AllowAny,))
def get_order(request,token):
    '''
        returns ordered data
    '''
    if token == 'false':
        return Response({"error" : "Login required"})
    token_obj = Token.objects.get(key = token)
    order_obj = Order.objects.filter(cart__user = token_obj.user).order_by('-id')
    all_data = []
    if order_obj.exists():
        order_serializer = OrderSerializer(order_obj,many=True)
        for order in order_serializer.data:
            cartproduct = CartProduct.objects.filter(cart_id=order['cart'])
            cartproduct_serializer = CartProductSerializer(cartproduct,many=True)
            for cartproduct in cartproduct_serializer.data:
                all_data.append(cartproduct)
    return Response({'historyData' : all_data})
