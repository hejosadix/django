from django.contrib import admin
from django.urls import path, include , re_path
from store import views
app_name = 'store'
urlpatterns = [
    path('document-<typeDoc>-add/<int:id>/', views.document_add,name='document_add'),
    path(r'document-<typeDoc>', views.document,name='document'),
    path(r'product-add/<int:id>/', views.products_add,name='products_add'),
    path(r'products', views.products, name='products'),
    path(r'my-basket', views.my_basket, name='my_basket'),
    
]

