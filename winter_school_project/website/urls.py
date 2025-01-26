from django.urls import path
from . import views

urlpatterns = [
    path('', views.home, name='home'),
    path('volunteer-tasks/', views.volunteer_tasks, name='volunteer_tasks'),
    path('request-help/', views.request_help, name='request_help'),
    path('important-info/', views.important_info, name='important_info'),
    path('about/', views.about, name='about'),
    path('how-it-works/', views.how_it_works, name='how_it_works'),
    path('faq/', views.faq, name='faq'),
    path('profile/', views.profile, name='profile'),
    path('notifications/', views.notifications, name='notifications'),
]
