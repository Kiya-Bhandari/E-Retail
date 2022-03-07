'''
    helps in serialization and deserialization Category model
'''
from rest_framework import serializers
from .models import Product

class ProductSerializer(serializers.ModelSerializer):
    '''
        A class that helps in serializing and deserializing

        ...

        Attributes
        ----------
        image : image
            absolute path of image

        Methods
        -------
        None

    '''
    image = serializers.ImageField(
        max_length=None, allow_empty_file=False, allow_null=True, required=False)
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
        model = Product
        fields = ('id', 'name', 'description', 'price', 'stock','image', 'category')
   