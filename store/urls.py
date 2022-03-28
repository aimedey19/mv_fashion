from django.conf import settings
from django.conf.urls.static import static
from django.urls import path

from store import views as store_views

app_name = 'store'

urlpatterns = [
    path('', store_views.home, name='home'),
    path('collections/', store_views.collections, name='collections')
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)