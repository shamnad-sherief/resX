from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name = 'home'),
    path('login/', views.login),
    path('about/', views.about, name = 'about'),
    path('materials/', views.materials, name = 'materials'),
    path('contact/', views.contact, name = 'contact'),

]