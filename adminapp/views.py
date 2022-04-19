from itertools import count
from urllib import request
from django.shortcuts import get_object_or_404, redirect, render
from unicodedata import name
from craftbasketapp.views import courses_craft
from tutorapp.models import TutorCoursesModel, TutorRegModel
from userapp.models import UserRegModel, userfeedbackmodel
from userapp.views import feedback_user
from django.contrib import messages
from django.core.mail import EmailMultiAlternatives
from craftbasketproject.settings import DEFAULT_FROM_EMAIL
# Create your views here.
def admin_login(request):
          if request.method ==  "POST":
            name = request.POST.get('username')
            password =request.POST.get('password')
            if name =='admin' and password =='admin':
                print('correct')
                messages.success(request,"login successful")     
                return redirect('admin_home')
            else:
                  print('invalid')
                  messages.error(request,"login successful")
                  
                        
          return render(request,'admin/adminlogin.html')
              
def admin_home(request):          
          courses_count = TutorCoursesModel.objects.count()
          users_count = UserRegModel.objects.count()
          feedback_count = userfeedbackmodel.objects.count()
          Tutor_count = TutorRegModel.objects.count()
          return render(request,'admin/admin_home.html',{'courses_count':courses_count,'users_count':users_count,'feedback_count':feedback_count,'tutor_count':Tutor_count})

def total_tutors(request):
          total_tutors = TutorRegModel.objects.all()
          return render(request,'admin/admin_tutors.html',{'tutors':total_tutors})
        
def admin_courses(request):
          courses=TutorCoursesModel.objects.all()
          return render(request,'admin/admin_courses.html',{'courses':courses}) 
        
def admin_users(request):
            students = UserRegModel.objects.all()
            return render(request,'admin/admin_users.html',{'students':students})
            
          
def admin_feedback(request):
            feedback = userfeedbackmodel.objects.all()
            return render (request,'admin/admin_feedback.html',{'feedback':feedback})  


def tutor_active(request,id):
            print('turor')
            object = get_object_or_404(TutorRegModel,Tutor_id=id)  
            object.Tutor_status="Accepted"
            object.save(update_fields=["Tutor_status"]) 
            html_content = "<br/><p>Craft Basket want to inform you that Your Application is <b>Accepted</b> as a online tutor in Craft Basket \
              <br>Thanks for your Resgistration<br>From CRAFTBASKET : All The best for Your Classes</p>"
            from_mail = DEFAULT_FROM_EMAIL
            to_mail = [object.Email ]
        # if send_mail(subject,message,from_mail,to_mail):
            msg = EmailMultiAlternatives(" Tutor Registration Status ", html_content, from_mail, to_mail)
            msg.attach_alternative(html_content, "text/html")
            if msg.send():
              print("Sent")
            return redirect("tutors")  
           
def tutor_reject(request,id):
            object = get_object_or_404(TutorRegModel,Tutor_id=id)
            object.Tutor_status="Rejected"
            object.save(update_fields=["Tutor_status"])
            html_content = "<br/><p>Craft Basket want to inform you that Your Application is <b>Rejected</b> as a online tutor in Craft Basket \
              <br>Thanks for your Resgistration<br>From CRAFTBASKET : All The best for Your Classes</p>"
            from_mail = DEFAULT_FROM_EMAIL
            to_mail = [object.Email ]
        # if send_mail(subject,message,from_mail,to_mail):
            msg = EmailMultiAlternatives(" Tutor Registration Status ", html_content, from_mail, to_mail)
            msg.attach_alternative(html_content, "text/html")
            if msg.send():
              print("Sent")
            return redirect("tutors")
                            
             
            
              
              