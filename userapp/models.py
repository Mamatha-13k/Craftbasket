import email
from email.policy import default
from unicodedata import category, name
from django.db import models
from django.forms import IntegerField
from tutorapp.models import *
       
class UserRegModel(models.Model):
        User_id = models.AutoField(primary_key=True)
        full_Name = models.TextField(help_text='Enter full Name', max_length=100,null=True)
        phone_number = models.BigIntegerField()
        gender = models.CharField(max_length=100,default='gender',null=True)
        Email = models.EmailField(max_length=100, help_text='Enter Email Address',null=True)
        Password = models.CharField(max_length=10, help_text='Enter Password',null=True)
        category = models.TextField(help_text='Enter category',null=True)
        image =models.ImageField(upload_to='images/',default='image',null=True)
        class Meta:
           db_table = 'user_details'

        def __str__(self):
           return self.full_Name
      
      

class userfeedbackmodel(models.Model):
       tutor=models.ForeignKey(TutorRegModel,on_delete=models.CASCADE,null=True)      
       name = models.TextField(help_text='Enter name',max_length=100)
       email = models.CharField(help_text='Enter email',max_length=100,null=True)
       phonenumber = models.BigIntegerField(help_text='Enter phone number')
       description = models.CharField(help_text='Write description',max_length=300)
       
       class Meta:
          db_table = 'feedback_users'
          
       def __str__(self):
             return self.name   

class OrderDetailsModel(models.Model):
       order_id=models.AutoField(primary_key=True)
       user=models.ForeignKey(UserRegModel,on_delete=models.CASCADE,null=True)
       course=models.ForeignKey(TutorCoursesModel,on_delete=models.CASCADE,null=True)
       tutor=models.ForeignKey(TutorRegModel,on_delete=models.CASCADE,null=True)
       
       date_added=models.DateField(auto_now_add=True,null=True)
       time_added=models.TimeField(auto_now_add=True,null=True)
       status=models.CharField(max_length=100,default='paid')
       
       class Meta:
                    db_table='order_details'
                          
       
        