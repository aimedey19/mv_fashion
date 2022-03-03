from django.contrib.auth.views import LoginView
from django.urls import path

from users import views as users_views
from users.views import UserAuthView

app_name = 'users'

urlpatterns = [
    path('register/', users_views.register, name='register'),
    path('login/', UserAuthView.as_view(template_name='store/login.html'), name='login')
]