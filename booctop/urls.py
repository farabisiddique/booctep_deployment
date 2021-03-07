"""booctop URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
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
from django.contrib import admin
# from . import views
# from django.urls import path

from django.conf import settings
from django.conf.urls import include, url, i18n
from django.conf.urls.static import static
from home.views import home_view, signup,loginn, about, faqs, help, terms, become,single_category, searching,single_course, register_user, activation, logout_,ecommerce_cart,ecommerce_payment, getPromoData
from home.views import *
from student.views import options_settings, account, courses, options_settings, security, payments, privacy, quizes, quizes2, certificates,viewcertificates, PurchaseHistory, student_messages, student_notifications,student_cart

from teacher.views import store_course, store_course_2, store_course_3, getCourseDetailsById, teacher_account, teacher_privacy, teacher_notifications, teacher_courses, teacher_security, teacher_payments, teacher_messages, teacher_faqs, teacher_help, course_engagement, addtofeedback, student_performance, dashboard, dashboard1, guideline, help2, newcourse2, newcourse3, newcourse4, newcourse5, newcourse, nocourseengagement, nocourse, saveLater

from video.views import playground, video_quiz, video_quiz2, video_quiz3, getQuiz

from django.contrib.auth import views as auth_views





# defaults.page_not_found(request, exception,'404.html')

# POSTS
urlpatterns = [
    # path('admin/', admin.site.urls),
    # url(r'^social-auth/', include('social_django.urls', namespace="social")),
    url('', include('home.urls')),
    url('', include('teacher.urls')),
    url('', include('student.urls')),    
    url('', include('video.urls')),

    url('', include('social_django.urls', namespace='social')),

    url(r'^', include('django.contrib.auth.urls')),
    url(r'^paypal/', include('paypal.standard.ipn.urls')),
    # url('', include('discount.urls')), 
]


# urlpatterns = [
#   url(r'set_language/(?P<user_language>\w+)/$', set_language_from_url, name="set_language_from_url"),
# ]





# handler404 = 'view_404'
# GETS
urlpatterns += i18n.i18n_patterns(
    url(r'^admin', admin.site.urls),

    # url(r'^api/v1', include('social_django.urls', namespace='social')),

    # HOME 
    url(r'^$', home_view, name='home'),
    url(r'^signup/$', signup, name='signup'),
    # url(r'^login/$', loginn, name='login'),
    url(r'^login/$', loginn, name='login'),
    url(r'^oauth/', include('social_django.urls', namespace='social')),  # social login
    url(r'^about/$', about, name='about'),
    url(r'^faqs/$', faqs, name='faqs'),
    url(r'^help/$', help, name='help'),
    url(r'^terms/$', terms, name='terms'),
    url(r'^become/$', become, name='become'),
    url(r'^search/$', searching, name='search'),




    url(r'^reset_password/', auth_views.PasswordResetView.as_view(template_name = "registration/reset_password.html"), name ='reset_password'),
    url(r'^reset_password_sent/', auth_views.PasswordResetDoneView.as_view(template_name = "registration/password_reset_sent.html"), name ='password_reset_done'),
    url(r'^reset/<uidb64>/<token>', auth_views.PasswordResetConfirmView.as_view(template_name = "registration/password_reset_form.html"), name ='password_reset_confirm'),
    url(r'^reset_password_complete/', auth_views.PasswordResetCompleteView.as_view(template_name = "registration/password_reset_done.html"), name ='password_reset_complete'),

    # url(r'^forgetme/$', forgetme, name='forgetme'),




    
    # url(r'^search/search/$', searching, name='searchfromanywhere'),
    
    
	url(r'^single_category/(?P<id>[0-9]+)/$', single_category, name='single_category'),
	
	
	# url(r'^single_course/(?P<id>[0-9]+)/$', single_course, name='single_course'), 
    url(r'^single_course/(?P<course_url>\w+)/$', single_course, name='single_course'), 
    url(r'^single_course/(?P<course_url>\w+)/ecommerce_payment/(?P<id>[0-9]+)/$', ecommerce_payment, name='ecommerce_payment'),  
    url(r'^single_course/(?P<course_url>\w+)/checkdiscountcode/$', checkdiscountcodewithid, name='check discount code single'), 
    url(r'^ecommerce_cart/$', ecommerce_cart, name='ecommerce_cart'),    
    # url(r'^ecommerce_payment/(?P<id>[0-9]+)/$', ecommerce_payment, name='ecommerce_payment'),
    url(r'^ecommerce_payment/(?P<id>[0-9]+)/getcardinfo/$', getcardinfo, name='getcardinfo'),
    # url(r'^getcardinfo/$', getcardinfo, name='getcardinfo'),

    url(r'^makeinvoice/$', makeInvoice, name='makeInvoice'),
	
    
    url(r'^logoutfromhere/$', logout_, name='logout'),
    url(r'^activation/$', activation, name='activation'),
    url(r'^options-settings/$', options_settings, name='options settings'),

    # TEACHER
    url(r'^teacher/account/$', teacher_account, name='teacher dashboard'),
    url(r'^teacher/security/$', teacher_security, name='teacher security'),
    url(r'^teacher/courses/$', teacher_courses, name='teacher courses'),
    url(r'^teacher/payments/$', teacher_payments, name='teacher payments'),
    url(r'^teacher/new-course-2/$', teacher_privacy, name='teacher privacy'),
    url(r'^teacher/notifications/$', teacher_notifications, name='teacher notifications'),
    url(r'^course-engagement/$', course_engagement, name='teacher course-engagement'),
    url(r'^addtofeedback/$', addtofeedback, name='addtofeedback'),
    url(r'^teacher/messages/$', teacher_messages, name='teacher messages'),
    url(r'^teacher/faqs/$', teacher_faqs, name='teacher faqs'),
    url(r'^teacher/help/$', teacher_help, name='teacher help'),
    url(r'^teacher/privacy/$', teacher_privacy, name='teacher privacy'),    
    url(r'^dashboard-1/$', dashboard1, name='teacher dashboard-1'),
    url(r'^teacher/dashboard/$', dashboard, name='teacher dashboard'),
    url(r'^guideline/$', guideline, name='teacher guideline'),
    url(r'^help2/$', dashboard, name='teacher help2'),

    url(r'^no-course-engagement/$', nocourseengagement, name='teacher no-course-engagement'),
    url(r'^no-course/$', nocourse, name='teacher no-course'),

    url(r'^store-course1/$', store_course, name='teacher store-course'),

    # STUDENT
    url(r'^account/$', account, name='student account'),
    url(r'^courses/$', courses, name='student courses'),
    url(r'^security/$', security, name='student security'),
    url(r'^payments/$', payments, name='student payments'),
    url(r'^privacy/$', privacy, name='student privacy'),
    url(r'^quizes/$', quizes, name='student quizes'),
    url(r'^quizes2/$', quizes2, name='student quizes2'),
    url(r'^certificates/$', certificates, name='student certificates'),

    url(r'^viewcertificates/$', viewcertificates, name='view certificates'),
   
    url(r'^PurchaseHistory/$', PurchaseHistory, name='student PurchaseHistory'),
    # url(r'^seeinvoice/$', seeinvoice, name='seeinvoice'),
    url(r'^student/messages/$', student_messages, name='student messages'), 
    url(r'^student/notifications/$', student_notifications, name='student notifications'),
	url(r'^student_cart/$', student_cart, name='student cart'),

    url(r'^showcartlist/$', showCartList, name='show cart list'),
    url(r'^showcartlist/checkout/$', checkout, name='checkout'),
    # url('checkout/', checkout, name='checkout'),
    # url(r'^process-payment/$', process_payment, name='process_payment'),
    url(r'^payment-done/$', payment_done, name='payment_done'),
    url(r'^payment-cancelled/$', payment_canceled, name='payment_cancelled'),

    url(r'^showcartlist/checkdiscountcode/$', checkdiscountcode, name='check discount code'),
    url(r'^showfavlist/$', showFavList, name='show fav list'),

    # url(r'^getQuiz/$', getQuiz, name='show cart list'),
    url(r'^getQuiz/$', getQuiz, name='get Quiz'),

    )

# urlpatterns =[url('', viewcertificates, name='viewcertificates'),url(r'^pdf', pdf, name='pdf'),]

urlpatterns += [
    # ... the rest of your URLconf goes here ...


] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
