import json

from dj_shop_cart.cart import get_cart_manager_class
from django.http import HttpRequest, JsonResponse
from django.shortcuts import render
from django.views.decorators.http import require_POST

Cart = get_cart_manager_class()


@require_POST
def add_product(request: HttpRequest):
    data = json.load(request.body)
    product = data.get('product')
    quantity = data.get('quantity')
    cart = Cart.new(request)
    cart.add(product, quantity=quantity)
    return JsonResponse(request, {})


@require_POST
def remove_product(request: HttpRequest):
    data = json.load(request.body)
    product = data.get('product')
    quantity = data.get('quantity')
    cart = Cart.new(request)
    cart.remove(product, quantity=quantity)
    ...


@require_POST
def empty_cart(request: HttpRequest):
    Cart.new(request).empty()
    ...
