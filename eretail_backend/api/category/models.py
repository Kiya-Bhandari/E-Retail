'''
    creates the model for category app
'''

from django import forms
from django.db import models
from django.contrib import admin

class Category(models.Model):
    '''
        A class to represent Cateory.

        ...

        Attributes
        ----------
        name : char
            name of category
        description : char
            describe category
        created_at : datetime
            date time when category is created
        updated_at : datetime
            date time when category is updated

        Methods
        -------
        str(self):
            return the string
    '''

    name = models.CharField(max_length=50)
    description = models.CharField(max_length=250)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __str__(self):
        return str(self.name)

    class Meta:
        '''
            A class that defines name of table in DB and in django admin
        '''
        db_table = 'category'
        verbose_name_plural = 'Categories'