'''
    defines the views for the user app
'''
from django.contrib.auth import authenticate, get_user_model
from rest_framework.authtoken.models import Token
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny
from rest_framework.status import (
    HTTP_400_BAD_REQUEST,
    HTTP_404_NOT_FOUND,
    HTTP_200_OK,
)
from rest_framework.response import Response
from rest_framework import viewsets
from .serializers import  UserSerializer, UserSigninSerializer

user_model = get_user_model()

@api_view(["POST"])
@permission_classes((AllowAny,))
def signin(request):
    '''
        checks if the user is authenticated and if authenticated and logs in for first time,
        token is generated and returns token and user basic user details
        else it will get already generated token and returns token and user basic user details.
        in other case it will give error message.
    '''
    signin_serializer = UserSigninSerializer(data = request.data)
    if not signin_serializer.is_valid():
        return Response(signin_serializer.errors,status = HTTP_400_BAD_REQUEST)


    user = authenticate(
            email = signin_serializer.data['email'],
            password = signin_serializer.data['password']
        )
    if not user:
        try:
            user = user_model.objects.get(email=signin_serializer.data['email'])
            print(user)
            if not user.check_password(signin_serializer.data['password']):
                return Response({'error': 'Wrong password'}, status=HTTP_404_NOT_FOUND)
        except user_model.DoesNotExist:
            return Response({'error': 'Invalid Credentials'}, status=HTTP_404_NOT_FOUND)

    user.save()
    token, _ = Token.objects.get_or_create(user = user)
    user_serialized = UserSerializer(user)

    return Response({
        'user': user_serialized.data,
        'token': token.key
    }, status=HTTP_200_OK)

class UserViewSet(viewsets.ModelViewSet):
    '''
        register's the user
    '''
    permission_classes_by_action = {'create': [AllowAny]}
    queryset = user_model.objects.all().order_by('id')
    serializer_class = UserSerializer
    def get_permissions(self):
        try:
            return [permission() for permission in self.permission_classes_by_action[self.action]]

        except KeyError:
            return [permission() for permission in self.permission_classes]
