'''
    creates the model for user app
'''
from django.db import models
from django.contrib.auth.models import AbstractUser

class CustomUser(AbstractUser):
    '''
        A class to represent CustomUser

        ...

        Attributes
        ----------
        username : char
            username
        email : email
            email of the user
        device : char
            incase when the user is not logged in
        created_at : datetime
            date time when category is created
        updated_at : datetime
            date time when category is updated

        Methods
        -------
        str(self):
            return the string
    '''
    username = models.CharField(max_length=50, null=True,blank=True)
    email = models.EmailField(max_length=254, unique=True, null=True, blank=True)
    device = models.CharField(max_length=200, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    def __str__(self):
        if self.email:
            return self.email
        else:
            return self.device

    class Meta:
        '''
            A class that defines name of table in DB and in django admin
        '''
        db_table='user'
        verbose_name_plural = 'Users'
