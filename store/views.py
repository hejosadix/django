from django.http import HttpResponseRedirect, HttpResponseNotFound, HttpResponse
from django.shortcuts import render
from .models import *
from .forms import *
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib import messages
from django.urls import reverse
from django.contrib.auth.decorators import permission_required,login_required,user_passes_test

@user_passes_test(lambda u: u.is_superuser)
def document_add(request, typeDoc, id):
    #check if this is a valid document
    if typeDoc not in('in','out'):
        return HttpResponseNotFound("page not found 404")
    if id != 0:
        #check if this document exits 
        if not Documents.objects.filter(pk = id).exists():
            return HttpResponseNotFound("page not found 404")
        else:
            #check if this document is in the right type of document
            if not Documents.objects.filter(type = typeDoc).exists():
                return HttpResponseNotFound("page not found 404")
    if request.method == 'POST':
        if int(id) == 0:
            form = DocumentsForm(request.POST)
        else:
            d = Documents.objects.get(pk=id)
            form = DocumentsForm(request.POST,instance=d)
        strType = typeDoc
        if 'documentsForm' in request.POST:
            ftype = form.save(commit=False)
            intID = 0
            strDescription = form.data['description']
            if strDescription.strip() =="":
                messages.warning(request, 'add description of document')
            else:
                ftype.type = strType
                ftype.subType = 'inventory'
                ftype.user = request.user
                ftype.save()
                intID = ftype.pk
                messages.success(request, 'your document is saves')
                

            return HttpResponseRedirect(reverse('store:document_add', kwargs={'typeDoc' : typeDoc, 'id' : intID }))
        if 'documentsDForm' in request.POST:
            formD = DocumentsDetailsForm(request.POST)
            if int(id) == 0:
                messages.warning(request, 'save the document description before add a products!')
                return HttpResponseRedirect(request.META['HTTP_REFERER'])
            else:
                ddExtra = formD.save(commit=False)
                ddExtra.type = strType
                d = Documents.objects.get(pk=id)
                ddExtra.documents = d
                ddExtra.user = request.user
                ddExtra.save()
                return HttpResponseRedirect(request.META['HTTP_REFERER'])
    else:
        #form = DocumentsForm()
        form = None
        if int(id) != 0:
            d = Documents.objects.get(pk=id)
            form = DocumentsForm(instance=d)
        else:
           form = DocumentsForm() 
        formD = DocumentsDetailsForm()
    #details
    documentd_list = DocumentsDetails.objects.filter(documents__pk = id)
    page = request.GET.get('page', 1)
    paginator = Paginator(documentd_list, 10)
    try:
        documentsd = paginator.page(page)
    except PageNotAnInteger:
        documentsd = paginator.page(1)
    except EmptyPage:
        documentsd = paginator.page(paginator.num_pages)

    return render(request, 'store/documentsadd.html', {'form': form, 'formD': formD, "documentsd": documentsd})
@user_passes_test(lambda u: u.is_superuser)
def document(request, typeDoc):
    if typeDoc not in('in','out'):
        return HttpResponseNotFound("page not found 404")
    document_list = Documents.objects.filter(type = typeDoc)
    page = request.GET.get('page', 1)
    paginator = Paginator(document_list, 10)
    try:
        documents = paginator.page(page)
    except PageNotAnInteger:
        documents = paginator.page(1)
    except EmptyPage:
        documents = paginator.page(paginator.num_pages)

    return render(request, 'store/documents.html', { 'documents': documents })
    
#@permission_required()
#@login_required
@user_passes_test(lambda u: u.is_superuser)
def products_add(request, id):
    if request.method == 'POST':
        if int(id) == 0:
            form = ProductsForm(request.POST)
        else:
            d = Products.objects.get(pk=id)
            form = ProductsForm(request.POST,instance=d)
        if form.is_valid():
            p = Products.objects.filter(pk=id)
            if p.exists():
                for pp in p:
                    logPrice = LogsPriceChange(user = request.user, price = pp.price,name = pp.name, products = pp)
                    logPrice.save()

            ftype = form.save(commit=False)
            ftype.save()
            return HttpResponseRedirect(reverse('store:products_add', kwargs = {'id': ftype.pk }))
    else:
        form = None
        if int(id) != 0:
            d = Products.objects.get(pk=id)
            form = ProductsForm(instance=d)
        else:
           form = ProductsForm() 

    logDocuments_list = LogsPriceChange.objects.filter(products__pk = id)
    page = request.GET.get('page', 1)
    paginator = Paginator(logDocuments_list, 10)
    try:
        logDocuments = paginator.page(page)
    except PageNotAnInteger:
        logDocuments = paginator.page(1)
    except EmptyPage:
        logDocuments = paginator.page(paginator.num_pages)

    return render(request, 'store/productsadd.html', {'form': form, 'logDocuments': logDocuments })