from django.db import models

class Collection(models.Model):
    title = models.CharField(max_length=155)
    description = models.CharField(max_length=155)
