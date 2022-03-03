from django.contrib import messages
from django.contrib.auth import login
from django.contrib.auth.views import LoginView
from django.core.exceptions import ValidationError
from django.shortcuts import render

from users.forms import NewUserForm, UserAuthForm


class UserAuthView(LoginView):
    form_class = UserAuthForm


def register(request):
    form = NewUserForm(request.POST or None)
    if request.method == 'POST' and form.is_valid():
        form.instance
        form.save()
        login(request, form.instance)
        messages.success(request, 'Votre compte a été créé avec succès')

    context = {
        "form": form
    }
    return render(request, "store/register.html", context)
