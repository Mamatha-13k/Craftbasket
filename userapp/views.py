import email
from urllib import request
from django.shortcuts import redirect, render
from unicodedata import category, name
from tutorapp.views import mycourses
from userapp.models import UserRegModel
from tutorapp.models import TutorCoursesModel, TutorRegModel
from userapp.models import userfeedbackmodel
from django.contrib import messages
from userapp.models import *
# Create your views here.


def user_login(request):
    if request.method == "POST":
            email = request.POST.get("email")
            password =  request.POST.get("pass")
            try:
                check =UserRegModel.objects.get(Email=email,Password=password)
                request.session["user_id"]= check.User_id
                messages.success(request,"login successful")         
                print("valid user login")
                return redirect ("user_home")
            except:
                messages.error(request,"invalid login")
                print("invalid")

    return render(request,'user/userlogin.html')    
                  
   


def register_user(request):
    if request.method == 'POST'  and 'image' in request.FILES:
        fullname = request.POST.get('fname')
        Ph_No = request.POST.get('phno')
        gender= request.POST.get('gender')
        Email = request.POST.get('email')
        password = request.POST.get('password')
        category = request.POST.get('category')
        image = request.FILES['image']
        UserRegModel.objects.create(full_Name=fullname,phone_number=Ph_No,
                                    gender=gender,Email=Email,Password=password,category=category,image=image)
    return render(request, 'user/Registrat_user.html')
                    
                    
                    
                    
                       

def user_profile(request):
     User_id=request.session["user_id"] 
     profile=UserRegModel.objects.filter(User_id = User_id) 
     courses_count =TutorCoursesModel.objects.count()
     return render (request,'user/user-profile.html',{'profile':profile,'courses_count':courses_count})
 
def user_tutors(request):
    user_tutors = TutorRegModel.objects.filter(Tutor_status="Accepted")
    return render(request,'user/user_tutors.html',{'tutors':user_tutors})
  
def courses_user(request):
    courses= TutorCoursesModel.objects.all()          
    return render(request,'user/courses_user.html',{'course':courses})

def feedback_user(request,id):
    # tutor_id = request.session["tutor_id"] 
    tutor= TutorRegModel.objects.filter(Tutor_id=id)         
    if request.method =='POST':
       name = request.POST['name']
       email = request.POST['email']
       phonenumber =   request.POST['phno']
       description = request.POST['description'] 
       userfeedbackmodel.objects.create(name=name,email=email,phonenumber=phonenumber,description=description)
    return render(request,'user/feedback_user.html',{'tutor':tutor}) 

def user_payment(request,id):
    user_id=request.session["user_id"] 
    user=UserRegModel.objects.filter(User_id = user_id).first() 
    # print(user.User_id)    
    
    courses=TutorCoursesModel.objects.filter(courses_id=id).first()
    tutor_id = TutorRegModel.objects.filter(Tutor_id=courses.tutor_id).first()
    # print(courses.courses_id)
    # print(courses.tutor_id)
    
    tutor=TutorRegModel.objects.all() 
    
    if request.method=='POST':
                   user_id=request.session["user_id"]
                   check = OrderDetailsModel.objects.filter(user_id=user_id,status='paid',course_id=id).count()
                   if check==0: 
                        OrderDetailsModel.objects.create(user=user,course_id=courses.courses_id,tutor=tutor_id) 
                   else:
                       messages.warning(request,"you already purchased this course")         
            
          
    return render(request,'user/user-payment.html',{'courses_id':courses,'t':tutor})

def user_mycourses(request):
              user_id=request.session["user_id"] 
         
              courses=OrderDetailsModel.objects.select_related('course').filter(status='paid',user_id=user_id)
              return render(request,'user/user-mycourses.html',{'mycourses':courses})
                  
              
           
              



