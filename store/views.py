from django.http import HttpRequest
from django.shortcuts import render


# Create your views here.
def home(request: HttpRequest):
    return render(request, 'store/index.html')

def collections(request: HttpRequest):
    return  render(request, 'store/collections.html')
