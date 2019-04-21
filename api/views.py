from django.shortcuts import render
from django.http import HttpResponseRedirect, HttpResponseNotFound, HttpResponse
from store.models import Products
from django.views.decorators.csrf import csrf_exempt, csrf_protect
from django.core import serializers
import json
# Create your views here.
@csrf_exempt
def api_json_products(request):
    if request.method == 'POST':
        if 'name' in request.POST.keys() and request.POST['name']:
            __name = request.POST['name']
            _products = Products.objects.filter(name__contains = __name)
            if _products.exists():
                data = serializers.serialize('json', list(_products), fields=('name','price'))
            else:
                data = "Nothing Found"
        else:
            data = 'No name parameter in the request'
    else:
        data = 'method is not post'

    if not is_json(data):
        json_data = json.dumps(data)
    else:
        json_data = data

    return HttpResponse(json_data, content_type='application/json')
def is_json(strJ):
  try:
    result = json.loads(strJ)
    return True  
  except:
    return False