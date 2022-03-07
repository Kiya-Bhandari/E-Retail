'''
    creates the model for order app
'''
from django.db import models
from api.user.models import CustomUser
from api.product.models import Product

class Cart(models.Model):
    '''
        A class to represent Cart.

        ...

        Attributes
        ----------
        user : foreign key CustomUser
            user of cart
        total : decimal
            describe category
        is_ordered : boolean
            shows whether the items are in cart or it has been ordered
        date : date
            date when the cart is created

        Methods
        -------
        str(self):
            return the string
    '''

    user = models.ForeignKey(CustomUser,on_delete=models.CASCADE,null=True,blank=True)
    total = models.DecimalField(max_digits=10, decimal_places=2)
    is_ordered = models.BooleanField(default=False)
    date = models.DateField(auto_now_add=True)
    def __str__(self):
        return str(self.pk)

    class Meta:
        '''
            A class that defines name of table in DB and in django admin
        '''
        db_table = 'cart'

class CartProduct(models.Model):
    '''
        A class to represent CartProduct

        ...

        Attributes
        ----------
        cart : foreign key(Cart)
            cartproduct belongs to which cart
        product : many to many field (Product)
            product is cart
        price : positive int
            price of particular product
        quantity : positive int
            quantity of particluar product
        subtotal : decimal
            total price of particular product according to quantity

        Methods
        -------
        get_products(self):
            return product details
    '''

    cart = models.ForeignKey(Cart,on_delete=models.CASCADE)
    product = models.ManyToManyField(Product)
    price = models.PositiveIntegerField()
    quantity = models.PositiveIntegerField()
    subtotal = models.DecimalField(max_digits=10, decimal_places=2)
    def get_products(self):
        '''
            return product details
        '''
        return "\n".join([p.name for p in self.product.all()])

    class Meta:
        '''
            A class that defines name of table in DB and in django admin
        '''
        db_table = 'cartproduct'

class Order(models.Model):
    '''
        A class to represent CartProduct

        ...

        Attributes
        ----------
        cart : one to one(Cart)
            order is of which cart
        transaction_id : char
            transaction id
        total : decimal
            total price of all products in cart
        created_at : datetime
            date time when order is created
        updated_at : datetime
            date time when order is updated

        Methods
        -------
        get_products(self):
            return product details
    '''

    cart  = models.OneToOneField(Cart,on_delete=models.CASCADE)
    transaction_id = models.CharField(max_length=150,default=0)
    total = models.DecimalField(max_digits=10, decimal_places=2)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        '''
            A class that defines name of table in DB and in django admin
        '''
        db_table = 'order'
    