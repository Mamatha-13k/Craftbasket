from wsgiref.util import request_uri
from django.forms import DurationField
from django.shortcuts import redirect, render,get_object_or_404

from unicodedata import category, name

from tutorapp.models import TutorRegModel

from tutorapp.models import TutorCoursesModel

from userapp.models import OrderDetailsModel, UserRegModel, userfeedbackmodel
from django.contrib import messages

# Create your views here.
def Tutor_login(request):
        if request.method == "POST":
            email = request.POST.get("email")
            password = request.POST.get("password")
            try:
                check = TutorRegModel.objects.get(Email=email,Password=password,Tutor_status="Accepted")                
                request.session["tutor_id"]= check.Tutor_id
                messages.success(request,'login succesful')
                return redirect ("tutor_profile")
            except:
              messages.error(request,'inavlid login')    
        return render(request,'tutor/Tutorlogin.html')
                  

def register_tutor(request):
                  
        if request.method=='POST' and 'image' in request.FILES:
            fullname=request.POST.get('fname')
            Ph_No=request.POST.get('phno')
            Experience=request.POST.get('exp')
            gender=request.POST.get('gender')
            Email=request.POST.get('email')
            password=request.POST.get('password')
            category=request.POST.get('category')
            image=request.FILES['image']
            TutorRegModel.objects.create (full_Name=fullname,phone_number=Ph_No,Experience=Experience,gender=gender,Email=Email,
                                      Password=password,image=image,category=category)    
           
        return render(request,'tutor/Resgistra_tutor.html')
def Tutor_details(request):
        return render (request,'tutor/tutor_home.html')  

def mycourses(request):
      tutor_id = request.session["tutor_id"]      
      if request.method == 'POST'and 'myfile' in request.FILES:
           name=request.POST.get('name')
           email=request.POST.get('email')   
           category=request.POST.get('category')
           Duration=request.POST.get('duration')
           video=request.POST.get('url')
           description=request.POST.get('description')
           fees=request.POST.get('fee')
           image = request.FILES['myfile']
           
           s = str(video)
           v = s.replace("https://www.youtube.com/watch?v=","https://youtube.com/embed/")
           TutorCoursesModel.objects.create(tutor_id=tutor_id,name=name,Email=email,
                category=category,Duration=Duration,video_url=v,description=description,courses_fee=fees,image=image)       
              
                          
      return render(request,'tutor/addcourses.html')  
  
def tutor_courses(request):
                 tutor_id = request.session["tutor_id"]  
                 courses=TutorCoursesModel.objects.filter(tutor_id=tutor_id)
                 return render (request,'tutor/tutor_courses.html',{'tutor':courses}) 

def tutor_students(request):
                user_id=request.session["user_id"] 
              
                # students = UserRegModel.objects.filter(tutor_id=tutor_id)
                students = OrderDetailsModel.objects.select_related('user').filter(status='paid',user_id=user_id)
                
                return render(request,'tutor/tutor_students.html',{'students':students}) 
         
def tutor_profile(request):
                tutor_id = request.session["tutor_id"]  
                profile = TutorRegModel.objects.filter(Tutor_id=tutor_id)
                courses_count = TutorCoursesModel.objects.filter(tutor_id=tutor_id).count()
                obj=get_object_or_404(TutorRegModel,Tutor_id=tutor_id)
                if request.method=='POST':
                  fullname=request.POST.get('fname')
                  Ph_No=request.POST.get('phno')
                  Experience=request.POST.get('exp')
                  gender=request.POST.get('gender')
                  Email=request.POST.get('email')
                  password=request.POST.get('password')
                  category=request.POST.get('category')
                  
                
                  if len(request.FILES) != 0:
                      profile_image = request.FILES['image']
                      obj.full_Name = fullname
                      obj.phone_number = Ph_No 
                      obj.Experience = Experience        
                      obj.gender = gender
                      obj.Email = Email
                      obj.Password = password
                      obj.category = category   
                      obj.image = profile_image             
                      obj.save(update_fields=['full_Name','phone_number','Experience','gender','Email','Password','category','image'])  
                  else:
                     
                      obj.full_Name = fullname
                      obj.phone_number = Ph_No 
                      obj.Experience = Experience        
                      obj.gender = gender
                      obj.Email = Email
                      obj.Password = password
                      obj.category = category   
                          
                      obj.save(update_fields=['full_Name','phone_number','Experience','gender','Email','Password','category'])               
                
                  
                         
                  
                return render(request,'tutor/tutor_profile.html',{'profile':profile,'courses_count':courses_count}) 
        

             

def tutor_feedback(request):
                tutor_id = request.session["tutor_id"]
                # tutor = TutorRegModel.objects.filter(Tutor_id=tutor_id)
               
                # feedback = userfeedbackmodel.objects.filter(tutor = tutor.select_related('Tutor_id'))
                feedback =userfeedbackmodel.objects.all()
                return render(request,'tutor/feedback.html',{'feedback':feedback})  
            
def delete_courses(request,id):
        d= TutorCoursesModel.objects.filter(courses_id=id)   
        d.delete()          
        return redirect('tutor_courses')             
               
          
              
                  
                
                  

    