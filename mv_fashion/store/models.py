from django.db import models


class Collection(models.Model):
    title = models.CharField(max_length=155)
    description = models.CharField(max_length=155)


class Product(models.Model):
    class Size(models.TextChoices):
        XS = "XS", "XS"
        S = "S", "S"
        M = "M", "M"
        L = "L", "L"

    collection = models.ForeignKey(Collection, on_delete=models.CASCADE)
    name = models.CharField(max_length=155)
    description = models.CharField(max_length=255)
    size = models.CharField(max_length=2, choices=Size.choices)
    price = models.FloatField()
    quantity = models.IntegerField()

    def __str__(self):
        return self.name


class ProductImage(models.Model):
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='products_images/')