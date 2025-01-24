# from django.http import HttpResponse
from django.shortcuts import render


def index(request):
    # return HttpResponse("Hello World! I'm Home.")
    return render(request, 'index.html')


def about(request):
    # return HttpResponse("My About page.")
    return render(request, 'about.html')