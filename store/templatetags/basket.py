from django import template
from django.db import models
from store.models import tempCar
from django.contrib.auth.models import User
from django.db.models import Count, Case, When, IntegerField
register = template.Library()


@register.simple_tag
def basket_count(request):
    r = ""
    if request.user.is_authenticated:
        __basket = tempCar.objects.filter(user = request.user)
        r = str(__basket.count())
        if r == "0":
            r=""
    return r 
