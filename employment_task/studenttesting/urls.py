from django.urls import path
from . import views

app_name = "studenttesting"

urlpatterns = [
    path('', views.index, name='index'),
    path('index', views.index, name='index'),
    path('student', views.student, name='student'),
    path('tests', views.tests, name='tests'),
    path('history', views.history, name='history'),
    path('feedback', views.feedback, name='feedback'),
    path('tests/<int:IDtest>', views.test, name='test'),
    path('tests/<int:IDtest>/results', views.results, name='results'),
    path('teacher', views.teacher, name='teacher'),
    path('reports', views.reports, name='reports'),
    path('students', views.students, name='students'),
    path('students/<int:IDs>', views.detail, name='detail'),
    path('logout', views.logout, name='logout'),
]
