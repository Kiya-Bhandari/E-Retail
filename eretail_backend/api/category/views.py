'''
    defines the views for the category app
'''
from rest_framework import viewsets
from rest_framework.decorators import permission_classes
from rest_framework.permissions import AllowAny
from .serializers import CategorySerializer
from .models import Category

@permission_classes((AllowAny,))
class CategoryViewSet(viewsets.ModelViewSet):
    '''
        returns list of category
    '''
    queryset = Category.objects.all().order_by('name')
    serializer_class = CategorySerializer
