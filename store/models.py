from django.db import models
from django.contrib.auth.models import User
# Create your models here.
class Products(models.Model):
    name = models.CharField(max_length=2000, blank= True, null=True)
    price = models.FloatField(blank= True, null= True)
    class Meta:
        ordering = ['-id']
class ProductsLikes(models.Model):
    created_at = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User, on_delete= models.PROTECT)
    products = models.ForeignKey(Products, on_delete= models.PROTECT)
class Documents(models.Model):
    description = models.CharField(max_length=2000, blank= True, null=True)
    type = models.CharField(max_length=40, blank= True, null=True)
    subType = models.CharField(max_length=40, blank= True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    user = models.ForeignKey(User, on_delete= models.PROTECT)
    
class DocumentsDetails(models.Model):
    type = models.CharField(max_length=40, blank= True, null=True)
    price = models.FloatField(blank= True, null= True)
    quantity =  models.FloatField(blank= True, null= True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    products = models.ForeignKey(Products, on_delete= models.PROTECT)
    documents = models.ForeignKey(Documents, on_delete= models.PROTECT)
    user = models.ForeignKey(User, on_delete= models.PROTECT)

class LogsPriceChange(models.Model):
    name = models.CharField(max_length=2000, blank= True, null=True)
    price = models.FloatField(blank= True, null= True)
    created_at = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User, on_delete= models.PROTECT)
    products = models.ForeignKey(Products, on_delete= models.PROTECT)

class tempCar(models.Model):
    quantity =  models.FloatField(blank= True, null= True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    products = models.ForeignKey(Products, on_delete= models.PROTECT)
    user = models.ForeignKey(User, on_delete= models.PROTECT)

