from django import template
from store.models import DocumentsDetails
from django.db.models import Count, Case, When, IntegerField, Sum
register = template.Library()

#@register.assignment_tag
@register.simple_tag
def url_replace(request, field, value):
    dict_ = request.GET.copy()
    dict_[field] = value
    return dict_.urlencode()

@register.simple_tag
def select_option(request, strKey, strValue):
    result = ""
    if strKey in request.GET:
        if request.GET.get(strKey,'') == strValue:
            result = "selected"
    return result


@register.simple_tag
def get_stock(id):
    r = 0.0
    dd = DocumentsDetails.objects.filter(products__pk=id)
    if dd.exists():
        decSum = dd.filter(type='in').aggregate(Sum('quantity'))['quantity__sum']
        decRes = 0
        if dd.filter(type='out').exists():
            decRes = dd.filter(type='out').aggregate(Sum('quantity'))['quantity__sum']
        r = float(decSum) - float(decRes)

    return float(r) 
