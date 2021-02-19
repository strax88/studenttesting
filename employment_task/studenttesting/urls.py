from django.urls import path
from . import views

app_name = "studenttesting"

urlpatterns = [
    # path('', views.LoginView.as_view(), name='index'),

    path('', views.MainPage.as_view(), name='index'),
    path('index', views.MainPage.as_view(), name='index'),
    path('accounts/login', views.LoginView.as_view(), name='accounts/login'),
    path('accounts/logout', views.CustomLogoutView.as_view(), name='accounts/logout'),
    # path('student', views.student, name='student'),
    path('tests', views.TestsView.as_view(), name='tests'),
    path('history', views.HistoryView.as_view(), name='history'),
    path('feedback', views.FeedbackView.as_view(), name='feedback'),
    path('tests/<int:pk>', views.TestView.as_view(), name='test'),
    path(r'results/<pk>', views.ResultView.as_view(), name='results'),
    # path('teacher', views.teacher, name='teacher'),
    # path('reports', views.reports, name='reports'),
    path('students', views.StudentsView.as_view(), name='students'),
    path('clear_result', views.ClearResultView.as_view(), name='clear_result'),
    # path('students/<int:IDs>', views.detail, name='detail'),

    # path('logout', views.logout, name='logout'),
]
