from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request, 'index.html')

def login(request):
    return render(request,'login.html')

def about(request):
    return render(request,'about.html')

def materials(request):
    return render(request,'materials.html')

def contact(request):
    return render(request,'contact.html')

