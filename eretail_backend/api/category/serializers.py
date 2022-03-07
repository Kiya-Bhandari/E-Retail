'''
    helps in serialization and deserialization Category model
'''
from rest_framework import serializers
from .models import Category

class CategorySerializer(serializers.ModelSerializer):
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

        model = Category
        fields = ('id','name')
