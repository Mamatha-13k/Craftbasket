from unicodedata import name
from django.shortcuts import redirect, render
from tutorapp.models import TutorCoursesModel, TutorRegModel
from craftbasketapp.models import *

def onlineplatform(request):
    return render(request,'main/index.html')

def about_craft(request):
 
    return render(request,'main/about.html')

def contact_craft(request):
    if request.method == 'POST':
        name =request.POST.get('name')
        email =request.POST.get('email')
        subject =request.POST.get('subject')
        descrip =request.POST.get('description') 
        ContactModel.objects.create(name=name,email=email,subject=subject,description=descrip)         
    return render(request,'main/contact.html')

def courses_craft(request):
  
    courses=TutorCoursesModel.objects.all()
    return render(request,'main/courses.html',{'courses':courses})

def  reviews_craft (request):
    return render(request,'main/review.html')







  