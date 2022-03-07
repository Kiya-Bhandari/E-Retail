'''
    defines the views for the product app
'''
from rest_framework import viewsets,filters
from rest_framework.decorators import permission_classes
from rest_framework.permissions import AllowAny
from rest_framework import generics
from .serializers import ProductSerializer
from .models import Product

@permission_classes((AllowAny,))
class ProductViewSet(viewsets.ModelViewSet):
    '''
        returns list of all products
    '''
    queryset = Product.objects.all().order_by('id')
    serializer_class = ProductSerializer

@permission_classes((AllowAny,))
class ProductFilter(generics.ListAPIView):
    '''
        returns list of products on basis of category
    '''
    serializer_class = ProductSerializer
    def get_queryset(self):
        category = self.kwargs['category']
        print("category : ",category)
        if category != "All":
            queryset =  Product.objects.filter(category__name=category).order_by('id')
        else:
            queryset = Product.objects.all().order_by('id')
        return queryset

@permission_classes((AllowAny,))
class ProductSearch(generics.ListAPIView):
    '''
        searching products by name
    '''
    queryset = Product.objects.all()
    serializer_class = ProductSerializer
    filter_backends = (filters.SearchFilter,filters.OrderingFilter)
    search_fields = ['name',]
    