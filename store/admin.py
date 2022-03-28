from django.contrib import admin

from store.models import Product, Collection, Variant, ProductImage

admin.site.register(Product)
admin.site.register(Collection)
admin.site.register(Variant)
admin.site.register(ProductImage)
