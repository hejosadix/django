from django.db import models
from django import forms
from .models import Documents, DocumentsDetails, Products
from django.forms import ModelForm, ModelChoiceField
class NamesChoiceField(ModelChoiceField):
    def label_from_instance(self, obj):
        return '{name}'.format(name=obj.name)
class DocumentsForm(ModelForm):
    class Meta:
        model = Documents
        fields = ['description']
    def __init__(self, *args, **kwargs):
        super(DocumentsForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'
class DocumentsDetailsForm(ModelForm):
    class Meta:
        model = DocumentsDetails
        fields = ['products','quantity','price' ]
    products = NamesChoiceField(queryset = Products.objects.all(), empty_label = "(Select Product)")
    def __init__(self, *args, **kwargs):
        super(DocumentsDetailsForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'


class ProductsForm(ModelForm):
    class Meta:
        model = Products
        fields = ['name', 'price']
    def __init__(self, *args, **kwargs):
        super(ProductsForm, self).__init__(*args, **kwargs)
        for visible in self.visible_fields():
            visible.field.widget.attrs['class'] = 'form-control'