'''
    helps in serialization and deserialization Cart,CartProduct and Order model
'''
from rest_framework import serializers
from .models import Order,Cart,CartProduct

class CartSerializer(serializers.ModelSerializer):
    '''
        A class that helps in serializing and deserializing

        ...

        Attributes
        ----------
        None

        Methods
        -------
        None

    '''
    class Meta:
        model = Cart
        fields = '__all__'

class CartProductSerializer(serializers.ModelSerializer):
    '''
        A class that helps in serializing and deserializing

        ...

        Attributes
        ----------
        None

        Methods
        -------
        None

    '''
    class Meta:
        '''
            A class that defines the fields to be serialized
            ...

            Attributes
            ----------

            model: model
                model to be serialized
            fields: tuple
                a tuple of fields to be serialized
        '''
        model = CartProduct
        fields = '__all__'
        depth = 1



class OrderSerializer(serializers.ModelSerializer):
    '''
        A class that helps in serializing and deserializing

        ...

        Attributes
        ----------
        None

        Methods
        -------
        None

    '''
    class Meta:
        '''
            A class that defines the fields to be serialized
            ...

            Attributes
            ----------

            model: model
                model to be serialized
            fields: tuple
                a tuple of fields to be serialized
        '''
        model = Order
        fields = '__all__'
