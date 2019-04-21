from django.http import HttpResponseRedirect, HttpResponseNotFound, HttpResponse
from django.shortcuts import render
from .models import *
from .forms import *
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib import messages
from django.urls import reverse
from django.contrib.auth.decorators import permission_required,login_required,user_passes_test
from django.db.models import Count, Case, When, IntegerField, FloatField, F, Sum, DecimalField, Subquery, OuterRef 
from django.db.models.functions import Cast, Coalesce

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
def products(request):
    product_list = None
    if request.method == 'POST':
        if 'btnLikes' in request.POST:
            if request.user.is_authenticated:
                __user =request.user
                __strID = request.POST.get("id",'0')
                __product = Products.objects.get(pk= int(__strID))
                pl = ProductsLikes(user=__user, products = __product)
                pl.save()
            else:
                messages.info(request, 'logging before you like any of our products')
        if 'btnAddtoBasket' in request.POST:
            if request.user.is_authenticated:
                __user =request.user
                __strID = request.POST.get("id",'0')
                __product = Products.objects.get(pk= int(__strID))
                __quantity =  request.POST.get("quantity",'0')
                #print("quantity: "+__quantity)
                if __quantity.strip() == "":
                    __quantity = "0"
                if not __quantity == "0":
                    _tmpc = tempCar.objects.filter(user=__user, products = __product)
                    if not _tmpc.exists():
                        pl = tempCar(user=__user, products = __product, quantity = __quantity)
                        pl.save()
                    else:
                        for t in _tmpc:
                            t.quantity = t.quantity + float(__quantity)
                            t.save()
                else:
                    messages.info(request, 'add quantity')

            else:
                messages.info(request, 'logging before add to basket')


    #    product_list = Products.objects.filter(description__contains = __strFilter)
    #else:
    #    product_list = Products.objects.all()
    __strFilter = request.GET.get('search', '')
    __strsortby = request.GET.get('sortby', '')
    __strdir = request.GET.get('dir', '')
    product_list = Products.objects.annotate(likes = Count('productslikes')).filter(name__contains = __strFilter)
    #product_list = product_list.annotate(stock = Sum(F("documentsdetails__quantity")))
    #product_list = product_list
    if __strsortby == 'name':
        if __strdir == "desc":
            __strsortby = "-" + __strsortby
        product_list = Products.objects.annotate(likes = Count('productslikes')).filter(name__contains = __strFilter).order_by(__strsortby)
    if __strsortby == 'likes':
        if __strdir == "desc":
            __strsortby = "-" + __strsortby

        product_list = Products.objects.annotate(likes = Count('productslikes')).filter(name__contains = __strFilter).order_by(__strsortby)

    page = request.GET.get('page', 1)
 
    paginator = Paginator(product_list, 10)
    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)

    return render(request, 'store/products.html', { 'products': products })

@login_required
def my_basket(request):
    __user = request.user
    __strFilter = request.GET.get('search', '')
    __strsortby = request.GET.get('sortby', '')
    __strdir = request.GET.get('dir', '')
    if request.method == 'POST':
        if 'btnLikes' in request.POST:
            __strID = request.POST.get("id",'0')
            __product = Products.objects.get(pk= int(__strID))
            pl = ProductsLikes(user=__user, products = __product)
            pl.save()
        elif 'btnDelete' in request.POST:
            __strID = request.POST.get("id",'0')
            tmpc = tempCar.objects.get(pk = int(__strID))
            tmpc.delete()
        elif 'btnProcessCar' in request.POST:
            tcs =  tempCar.objects.filter(user = __user)
            if tcs.exists():
                doc = Documents(user = __user, description = "online sell", type = 'out', subType = "sell" )
                doc.save()
                for tc in tcs:
                    dd = DocumentsDetails()
                    dd.type = "out"
                    dd.price = tc.products.price
                    dd.quantity = tc.quantity
                    dd.documents = doc
                    dd.user = request.user
                    dd.products = tc.products
                    dd.save()
                tmpc = tempCar.objects.filter(user = __user)
                for t in tmpc:
                    tt = tempCar.objects.get(pk = t.pk)
                    tt.delete()
                messages.success(request, 'Thanks for you purchase :)')
            else:
                messages.info(request, 'add products to your basket firt')
                
    car_list = tempCar.objects.annotate(likes = Count('products__productslikes'), cost = Cast(F('quantity') * F('products__price'), FloatField())).filter(user= __user, products__name__contains = __strFilter)

    if __strsortby == 'name':
        __strsortby = 'products__name'
        if __strdir == "desc":
            __strsortby = "-" + __strsortby
        car_list = tempCar.objects.annotate(likes = Count('products__productslikes'), cost = Cast(F('quantity') * F('products__price'), FloatField())).filter(user= __user,products__name__contains = __strFilter).order_by(__strsortby)
    if __strsortby == 'likes':
        if __strdir == "desc":
            __strsortby = "-" + __strsortby

        car_list = tempCar.objects.annotate(likes = Count('products__productslikes'), cost = Cast(F('quantity') * F('products__price'), FloatField())).filter(user= __user, products__name__contains = __strFilter).order_by(__strsortby)


    page = request.GET.get('page', 1)
    total = car_list.aggregate(Sum('cost'))['cost__sum']
    if total is None:
        total = 0.0
    paginator = Paginator(car_list, 10)
    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)

    return render(request, 'store/mybasket.html', { 'products': products , 'total': total })

@login_required
def purchase_history(request):
    documentd_list = DocumentsDetails.objects.filter(user = request.user, type="out")
    page = request.GET.get('page', 1)
    paginator = Paginator(documentd_list, 10)
    try:
        documentsd = paginator.page(page)
    except PageNotAnInteger:
        documentsd = paginator.page(1)
    except EmptyPage:
        documentsd = paginator.page(paginator.num_pages)
    return render(request, 'store/purchase_history.html', { "documentsd": documentsd})
def stock(request):
    product_list = None
    __strFilter = request.GET.get('search', '')
    __strsortby = request.GET.get('sortby', '')
    __strdir = request.GET.get('dir', '')
    product_list = Products.objects.filter(name__contains = __strFilter)
    product_list = product_list.annotate(
    stock_in_sum = Sum(Case(When(documentsdetails__type='in', then=F('documentsdetails__quantity')), output_field=DecimalField(), default=0)),
    stock_out_sum = Sum(Case(When(documentsdetails__type='out', then=F('documentsdetails__quantity')), output_field=DecimalField(), default=0))
    ).annotate(stock = F('stock_in_sum') - F('stock_out_sum'))
    _likes = ProductsLikes.objects.filter(products=OuterRef('pk')).values('products').annotate(count=Count('pk')).values('count')
    product_list = product_list.annotate(likes = Coalesce(Subquery(_likes),0)).filter(stock__gt = 0)
    if __strsortby == 'name':
        if __strdir == "desc":
            __strsortby = "-" + __strsortby
        product_list = Products.objects.filter(name__contains = __strFilter).order_by(__strsortby)
        product_list = product_list.annotate(
        stock_in_sum = Sum(Case(When(documentsdetails__type='in', then=F('documentsdetails__quantity')), output_field=DecimalField(), default=0)),
        stock_out_sum = Sum(Case(When(documentsdetails__type='out', then=F('documentsdetails__quantity')), output_field=DecimalField(), default=0))
        ).annotate(stock = F('stock_in_sum') - F('stock_out_sum'))
    _likes = ProductsLikes.objects.filter(products=OuterRef('pk')).values('products').annotate(count=Count('pk')).values('count')
    product_list = product_list.annotate(likes = Coalesce(Subquery(_likes),0)).filter(stock__gt = 0)
    if __strsortby == 'likes':
        if __strdir == "desc":
            __strsortby = "-" + __strsortby

        product_list = Products.objects.filter(name__contains = __strFilter).order_by(__strsortby)
        product_list = product_list.annotate(
        stock_in_sum = Sum(Case(When(documentsdetails__type='in', then=F('documentsdetails__quantity')), output_field=DecimalField(), default=0)),
        stock_out_sum = Sum(Case(When(documentsdetails__type='out', then=F('documentsdetails__quantity')), output_field=DecimalField(), default=0))
        ).annotate(stock = F('stock_in_sum') - F('stock_out_sum'))
        _likes = ProductsLikes.objects.filter(products=OuterRef('pk')).values('products').annotate(count=Count('pk')).values('count')
        product_list = product_list.annotate(likes = Coalesce(Subquery(_likes),0)).filter(stock__gt = 0)

    page = request.GET.get('page', 1)
 
    paginator = Paginator(product_list, 10)
    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)

    return render(request, 'store/stock.html', { 'products': products })