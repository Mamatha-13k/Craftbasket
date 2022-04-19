from unicodedata import name
from django.db import models
  
# Create your models here.
class craft_arts(models.Model):
          Tutor_id=models.IntegerField()
          Tutor_Name=models.TextField(max_length=100)
          Course_Category=models.CharField(max_length=100)
          Course_Name=models.CharField(max_length=100)
          course_Durtaion=models.CharField(max_length=100)
          course_Description=models.CharField(max_length=100)
          Course_Fees=models.PositiveIntegerField()

          
          def __str__(self):
                return self.Course_Name+ '  (' + self.Course_Category +' ) '    
          
class ContactModel(models.Model):
          id=models.AutoField( primary_key=True)
          name=models.TextField(max_length=100)
          email=models.CharField(max_length=100)
          subject=models.CharField(max_length=100)
          description=models.CharField(max_length=100)   
          class Meta:
             db_table ='contact_details'