from django.http import HttpRequest
from django.shortcuts import render

# Create your views here.
from store.models import Product, Collection


def home(request: HttpRequest):
    last_collection = Collection.objects.last()
    context = {
        'products': Product.objects.filter(collection=last_collection).all()
    }
    return render(request, 'store/index.html', context)


def collections(request: HttpRequest):
    context = {
        'products': Product.objects.all().order_by('id')
    }
    return render(request, 'store/collections.html', context)
