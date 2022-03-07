'''
    helps in serialization and deserialization for CustomUser model
'''
from rest_framework import serializers
from .models import CustomUser

class UserSigninSerializer(serializers.Serializer):
    '''
        A class that helps in serializing and deserializing

        ...

        Attributes
        ----------
        email : email
        password : char

        Methods
        -------
        None

    '''
    email = serializers.EmailField(required=True)
    password = serializers.CharField(required=True)

class UserSerializer(serializers.ModelSerializer):
    """
        A class that helps in serializing and deserializing


        ...

        Attributes
        ----------
        password2 : char

        Methods
        -------
        validate(self, attrs):
            validation

        create(self, validated_data):
            creates user
    """

    email = serializers.EmailField(required=True)
    password2 = serializers.CharField(
        style={'input_type': 'password'}, write_only=True)

    def validate(self, attrs):

        if attrs['password'] != attrs['password2']:
            raise serializers.ValidationError(
                {"error": "Password fields didn't match."})
        return attrs

    def create(self, validated_data):
        user = CustomUser.objects.create(
            username=validated_data['username'],
            email=validated_data['email'],
        )

        user.set_password(validated_data['password'])
        user.save()

        return user

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
        model = CustomUser
        extra_kwargs = {'password': {'write_only': True}}
        fields = ('id','username', 'email', 'password', 'password2',
                  'is_active', 'is_staff', 'is_superuser')
