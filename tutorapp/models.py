from distutils.command.upload import upload
from email.policy import default
from pydoc import plain
from select import select
from unicodedata import category
from urllib import request
from django import db
from django.db import models
from django.forms import CharField, EmailField

# Create your models here.


class craft_arts(models.Model):
    Tutor_id = models.IntegerField()
    Tutor_Name = models.TextField(max_length=100)
    Course_Category = models.CharField(max_length=100)
    Course_Name = models.CharField(max_length=100)
    course_Durtaion = models.CharField(max_length=100)
    course_Description = models.CharField(max_length=100)
    Course_Fees = models.PositiveIntegerField()

    def __str__(self):
        return self.Course_Name + '  (' + self.Course_Category + ' ) '


class TutorRegModel(models.Model):
    Tutor_id = models.AutoField(primary_key=True)
    full_Name = models.TextField(help_text='Enter full Name', max_length=100)
    phone_number = models.BigIntegerField()
    Experience = models.CharField(max_length=100)
    gender =models.CharField(max_length=50,default=False)
    category = models.CharField(help_text='Select Category',max_length=50,default='category')
    Email = models.EmailField(max_length=100, help_text='Enter Email Address')
    Password = models.CharField(max_length=10, help_text='Enter Password')
    Tutor_status = models.CharField(max_length=100,default="pending")
    image = models.ImageField(upload_to='images/',default=False)
    class Meta:
        db_table = 'Tutor_details'
    def __str__(self):
        return self.full_Name
  
    


class TutorCoursesModel(models.Model):
    tutor_id = models.IntegerField(null=True,blank=True)
    courses_id = models.AutoField(primary_key=True)
    name = models.TextField(help_text='Enter Name', max_length=100)
    Email = models.EmailField(max_length=100, help_text='Enter Email Address')
    category = models.CharField(max_length=50)
    Duration = models.CharField(max_length=50,null=True)
    video_url = models.CharField(max_length=500, help_text='Youtube Url')
    courses_fee = models.CharField(max_length=50, help_text='Enter fee ')
    image = models.ImageField(upload_to='images/', null=True)
    description= models.CharField(max_length=100,help_text='Write Description',null=True)
    status= models.CharField(max_length=100,default="pending")


    class Meta:
        db_table = 'TutorCourseDetails'

    def __str__(self):
        return self.category
