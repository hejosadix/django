from django.contrib import admin
from django.urls import path, include , re_path
from api import views
app_name = 'api'
urlpatterns = [
    path('api-json-products', views.api_json_products,name='api_json_products'),
    ]
