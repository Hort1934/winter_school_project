from django.shortcuts import render

# Create your views here.
from website import models


def web_index(request):
    return render(request, 'website/homepage.html')

def home(request):
    return render(request, 'home.html')

def volunteer_tasks(request):

    context = {
        'tasks': models.Task.objects.all()
    }
    return render(request, 'volunteer_tasks.html', context)

def request_help(request):
    return render(request, 'request_help.html')

def important_info(request):
    return render(request, 'important_info.html')

def about(request):
    return render(request, 'about.html')

def how_it_works(request):
    return render(request, 'how_it_works.html')

def faq(request):
    return render(request, 'faq.html')

def profile(request):
    return render(request, 'profile.html')

def notifications(request):
    return render(request, 'notifications.html')
