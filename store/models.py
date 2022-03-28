from decimal import Decimal
from math import ceil

from django.contrib.humanize.templatetags.humanize import intcomma
from django.contrib.postgres.fields import ArrayField

# from dj_shop_cart.cart import CartItem
from django.db import models


class Collection(models.Model):
    title = models.CharField(max_length=155)
    description = models.CharField(max_length=155)

    def __str__(self):
        return self.title


class Product(models.Model):
    class Size(models.TextChoices):
        XS = "XS", "XS"
        S = "S", "S"
        M = "M", "M"
        L = "L", "L"

    collection = models.ForeignKey(Collection, on_delete=models.CASCADE)
    name = models.CharField(max_length=155, null=True, blank=True, verbose_name='Nom')
    description = models.CharField(max_length=255, null=True, blank=True, verbose_name='Description')
    size = ArrayField(models.CharField(max_length=2, choices=Size.choices), verbose_name='Taille')
    price = models.DecimalField(max_digits=10, decimal_places=2, verbose_name='Prix')
    style = models.CharField(max_length=50, verbose_name='Style')
    material = models.CharField(max_length=50, verbose_name='Matériel')
    genre = models.CharField(max_length=25, verbose_name='Genre')

    def __str__(self):
        return f'{self.style} {self.material} {self.id}'

    def get_price(self) -> int:
        return ceil(self.price)

    def get_beautiful_price(self) -> str:
        return f'{intcomma(ceil(self.price))} FCFA'

    @property
    def images(self):
        images = [
            Image.image for variant in self.variants.all() for Image in variant.images.all()
        ]
        print(images)
        return images

    @property
    def get_image(self):
        return self.variants.first().images.first().image.url


class Variant(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE, related_name="variants")
    color = models.CharField(max_length=50)
    quantity = models.IntegerField()

    def __str__(self):
        return f'{self.product}-{self.color}'


class ProductImage(models.Model):
    variant = models.ForeignKey(Variant, on_delete=models.CASCADE, related_name='images')
    image = models.ImageField(upload_to='products_images/')
