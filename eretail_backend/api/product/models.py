'''
    creates the model for product app
'''
from django.db import models
from api.category.models import Category

class Product(models.Model):
    '''
        A class to represent Product

        ...

        Attributes
        ----------
        name : char
            cartproduct belongs to which cart
        description : char
            describe product
        price : decimal
            price of product
        stock : positive int
            total quantity of product
        image : image
            image of product
        category : foreign key(Category)
            product belongs to which category
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
    price = models.DecimalField(max_digits=10,decimal_places=2)
    stock = models.PositiveIntegerField()
    is_active = models.BooleanField(default=True, blank=True)
    image = models.ImageField(upload_to='images/', blank=True, null=True)
    category = models.ForeignKey(
        Category, on_delete=models.SET_NULL, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    def __str__(self):
        return self.name

    class Meta:
        '''
            A class that defines name of table in DB and in django admin
        '''
        db_table = 'product'
        ordering = ['id']
        