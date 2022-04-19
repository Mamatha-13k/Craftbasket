"""craftbasketproject URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from urllib import request
from django.contrib import admin
from django.urls import path


from userapp import views as user_views
from adminapp import views as admin_views
from tutorapp import views as tutor_views
from craftbasketapp import views as craft_views
from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    # main
    path('', craft_views.onlineplatform, name='onlineplatform'),
    path('about', craft_views.about_craft, name='about_craft'),
    path('contact', craft_views.contact_craft, name='contact_craft'),
    path('courses', craft_views.courses_craft, name='courses_craft'),
    path('review', craft_views.reviews_craft, name='review_craft'),
    # tutor
    path('tutor-login', tutor_views.Tutor_login, name='Tutor_login'),
    path('tutor-reg', tutor_views.register_tutor, name='register_tutor'),
    path('add-courses',tutor_views. mycourses,name='mycourses'),
    path('tutor-courses',tutor_views.tutor_courses,name='tutor_courses'),
    path('tutor-view-students',tutor_views.tutor_students,name='tutor_students'),
    path('tutor-profile',tutor_views.tutor_profile,name='tutor_profile'),
    path('tutor-view-feedback',tutor_views.tutor_feedback,name='user_feedback'),
    path('tutor_active/<int:id>',admin_views.tutor_active,name='tutor_active'),
    path('tutor_reject/<int:id>',admin_views.tutor_reject,name='tutor_reject'),
    path('tutor_courses_del/<int:id>/', tutor_views.delete_courses, name='tutor_courses_del'),
    # user
    path('user-login', user_views.user_login, name='user_login'),
    path('user-reg', user_views.register_user, name='register_user'),
    path('user-profile',user_views.user_profile,name='user_home'),
    path('user-tutors',user_views.user_tutors,name='user_tutors'),
    path('user-courses',user_views.courses_user,name='courses_user'),
    path('feedback_user/<int:id>/',user_views.feedback_user,name='feedback_user'),
    path('user_payment/<int:id>/',user_views.user_payment,name='user_payment'),
    path('my-courses',user_views.user_mycourses,name='user-mycourses'),
   
    
    
    # admin
    path('admin-login', admin_views.admin_login, name='admin_login'),
    path('admin-home', admin_views.admin_home, name='admin_home'),
    path('admin-view-tutors',admin_views.total_tutors,name='tutors'),
    path('admin-view-courses',admin_views.admin_courses,name='admin_courses'),
    path('admin-view-users',admin_views.admin_users,name='admin_users'),
    path('admin-view-feedback',admin_views.admin_feedback,name='admin_feedback'),
  




]
urlpatterns+= static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
