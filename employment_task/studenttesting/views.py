from django.shortcuts import render, redirect
from django.urls import reverse, reverse_lazy
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings
from .models import Menu, Test, Question, Answer, CustomUser, Result
from django.core.files.storage import FileSystemStorage
from django.template.context_processors import media, static
from django.core.mail import send_mail, BadHeaderError
from django.utils import timezone
from django.views.generic.base import View, TemplateView
from django.views import generic
from django.contrib.auth.views import LoginView, LogoutView
from .script import notify_administrator, endword
from .forms import FeedbackForm, MainPageForm, ReportForm
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.auth.mixins import UserPassesTestMixin
from django.contrib.auth.mixins import PermissionRequiredMixin
from django.contrib.auth.decorators import login_required
import os

# Create your views here.
def getmenu(request):
    # формирование меню для разных типов пользователей
    print(request.user.user_type)
    menu = list()
    unsorted_menu = list()
    max_element = 0
    if request.user.is_anonymous:
        return HttpResponseRedirect(reverse('studenttesting:accounts/login'))
    for elem in Menu.objects.filter(role=1):
        unsorted_menu.append(elem.position)
    if isinstance(request.user.user_type, type(None)):
        pass
    elif request.user.user_type.id > 1:
        for elem in Menu.objects.filter(role=request.user.user_type.id):
            unsorted_menu.append(elem.position)
    unsorted_menu.sort()
    for position in range(len(unsorted_menu)):
        menu.append(Menu.objects.filter(position=unsorted_menu[position])[0])
    return menu


class CommonObject(object):
    menu = ''
    user = ''
    result = ''
    results = ''
    test = ''
    questions = ''
    answers = ''
    success_url = ''
    notes = ''
    message_status = ''
    avatar = ''
    phone_error = ''


class MainPage(UserPassesTestMixin, generic.FormView):
    login_url = 'accounts/login'
    redirect_field_name = 'redirect_to'
    model = CustomUser
    form_class = MainPageForm
    template_name = 'studenttesting/mainpage.html'
    success_url = reverse_lazy("studenttesting:index")
    data = CommonObject()

    def test_func(self):
        if self.request.user.is_anonymous:
            return False
        return True

    def setup(self, request, *args, **kwargs):
        self.user = request.user
        self.request = request

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        self.data.user = self.request.user
        self.data.menu = getmenu(self.request)
        self.data.avatar = self.getavatar(self.request)
        self.data.phone_error = ''
        context['data'] = self.data
        return context

    def form_valid(self, form):
        return super().form_valid(form)

    def get(self, request):
        user = request.user
        bound_form = MainPageForm(instance=user)
        self.get_context_data()
        return render(request, self.template_name, {'form': bound_form, 'data': self.data})

    def post(self, request, *args, **kwargs):
        if 'avatar' in request.FILES:
            current_avatar = self.uploadavatar(request.FILES['avatar'])
        if request.POST['phone']:
            self.data.phone_error = self.getphone(self.request)
            phone_error = self.checkphone(request.POST['phone'])
        return super().post(request, args, kwargs)

    def getauthcontent(self, request, menu, avatar, phone_error):
        return render(request, 'studenttesting/mainpage.html', self.data)

    def getavatar(self, request):
        # назначение аватарки по умолчанию
        current_avatar = settings.STATIC_URL + 'studenttesting/default_avatar.png'
        if self.user.avatar and len(self.user.avatar) > 0:
            current_avatar = self.user.avatar
        # загрузка аватарки в медиа-каталог
        if request.method == 'POST' and 'avatar' in request.FILES:
            current_avatar = self.uploadavatar(request.FILES['avatar'])
        # проверка на наличие файла аватарки, если отсутствует
        # применяется аватарка по умолчанию
        if not os.path.exists(str(settings.BASE_DIR) + current_avatar):
            current_avatar = settings.STATIC_URL + 'studenttesting/default_avatar.png'
        return current_avatar

    def uploadavatar(self, avatar):
        fs = FileSystemStorage()
        filename = fs.save(
            '.'.join(avatar.name.split('.')[:-1])
            + "_student_" + str(self.user.id)
            + "." + avatar.name.split('.')[-1],
            avatar
        )
        uploaded_file_url = fs.url(filename)
        uploaded_file = str(settings.BASE_DIR) + uploaded_file_url
        self.user.avatar = uploaded_file_url
        self.user.save()
        return self.user.avatar

    def getphone(self, request):
        # назначение телефона по умолчанию
        phone_error = ''
        # изменение аватарки при наличии информации о файле в базе данных
        # проверка ввода телефонного номера, не менее 5 символов
        if request.method == 'POST' and request.POST['phone']:
            phone_error = self.checkphone(request.POST['phone'])
        phone = self.user.phone
        if not phone:
            self.savephone('')
        else:
            self.savephone(phone)
        # формирование номера телефона для отображения в шаблоне
        if not phone_error: phone_error = ''
        return phone_error

    def checkphone(self, phone):
        if len(phone) < 5:
            return 'Неверный формат номера'
        else:
            self.savephone(phone)

    def savephone(self, phone):
        self.user.phone = phone
        self.user.save()


class CustomLogoutView(LogoutView):
    def get(self, request, *args, **kwargs):
        return render(request, 'studenttesting/logged_out.html')


class TestsView(UserPassesTestMixin, generic.ListView):
    login_url = 'accounts/login'
    logout_url = 'accounts/logout_url.html'
    redirect_field_name = 'redirect_to'
    model = Test
    context_object_name = 'list_of_tests'
    data = CommonObject()

    def setup(self, request, *args, **kwargs):
        self.request = request

    def get_context_data(self, *, object_list=None, **kwargs):
        self.completed_tests = set(i.test.id for i in Result.objects.filter(user=self.request.user))
        context = super().get_context_data(**kwargs)
        self.data.result = list()
        self.data.menu = getmenu(self.request)
        for test in [t for t in Test.objects.all()]:
            self.data.result.append(self.checktest(self.request, test))
        context['data'] = self.data
        return context

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 2:
            return False
        return True

    def checktest(self, request, test):
        if test.id in self.completed_tests:
            return [test, 'Пройдено']
        else:
            return [test, 'Не пройдено']


class HistoryView(UserPassesTestMixin, generic.TemplateView):
    template_name = "studenttesting/history.html"
    data = CommonObject()

    def setup(self, request, *args, **kwargs):
        self.request = request

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        results = UserResults(self.request, self.request.user)
        self.data = results.getdata()
        self.data.menu = getmenu(self.request)
        self.data.user = self.request.user
        context['data'] = self.data
        return context

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 2:
            return False
        return True


class UserResults:

    def __init__(self, request, user):
        self.request = request
        self.user = user

    def getdata(self):
        self.data = CommonObject()
        self.data.results = list()
        self.data.tests = list(set(item.test for item in Result.objects.filter(user=self.user)))
        self.data.notes = list()
        for test in self.data.tests:
            result = Result.objects.filter(test=test, user=self.user)[0]
            self.data.results.append([result, self.getnotes(test)])
        return self.data

    def getnotes(self, test):
        positive = 0
        negative = 0
        score = 0.0
        results = Result.objects.filter(test=test, user=self.user)
        questions_count = Question.objects.filter(test=test).count()
        positive += len([item for item in results if item.answer.correct])
        negative += len([item for item in results if not item.answer.correct])
        negative += questions_count - len([item for item in results])
        score = round(positive/questions_count, 2)
        return [positive, negative, score]


class StudentsView(UserPassesTestMixin, generic.TemplateView):
    template_name = "studenttesting/students.html"
    data = CommonObject()

    def setup(self, request, *args, **kwargs):
        self.request = request

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        students_results = dict()
        self.data.menu = getmenu(self.request)
        self.data.user = self.request.user
        for user in CustomUser.objects.filter(user_type=3):
            results =  UserResults(self.request, user)
            students_results[user] = results.getdata()
        context['students_results'] = students_results
        context['data'] = self.data
        return context

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 3:
            return False
        return True


class ReportsView(UserPassesTestMixin, generic.FormView):
    template_name = "studenttesting/reports.html"
    data = CommonObject()
    model = Result
    form_class = ReportForm

    def setup(self, request, *args, **kwargs):
        self.request = request

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        students_results = dict()
        form = ReportForm({'completion_date':timezone.localtime(timezone.now()).strftime("%Y-%m-%d")})
        if form.is_valid():
            form.data['completion_date'] = timezone.localtime(timezone.now()).strftime("%Y-%m")
        self.data.menu = getmenu(self.request)
        self.data.user = self.request.user
        for user in CustomUser.objects.filter(user_type=3):
            results =  UserResults(self.request, user)
            students_results[user] = results.getdata()
        context['students_results'] = students_results
        context['data'] = self.data
        context['form'] = form
        return context

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 3:
            return False
        return True

    def post(self, request):
        self.sendemail(request)
        return super().post(request)

    def getreportdata(self, request):
        date = request.POST['completion_date']

        report_data = dict()
        year = date.split("-")[0]
        month = date.split("-")[1]
        results = Result.objects.filter(
            completion_date__year=year, completion_date__month=month)
        report_data['email_for'] = [request.user.email]
        report_data['email_from'] = 'studenttesting@example.com'
        report_data['theme'] = "Отчёт по количеству пройденных тестов за {0}.{1}".format(
            month, year)
        temp_dict = dict()
        message_data = ''
        for record in results:
            temp_dict[record.test] = set()
        for record in results:
            temp_dict[record.test].add(record.user)
        for key, value in temp_dict.items():
            users_list = ", ".join([item.full_name for item in value])
            values = (key.name, date, len(value), endword(len(value)), users_list)
            message_data += "Тест '{0}' {1} пройден {2} раз{3}.\nСписок студентов: {users_list}.\n".format(users_list=users_list, *values)
        for test in Test.objects.all():
            message_data = self.checktest(test, temp_dict, message_data, date)
        report_data['message_data'] = message_data
        return report_data

    def checktest(self, test, temp_dict, message_data, date):
        if not test in temp_dict.keys():
            message_data += "Тест '{0}' {1} никто не проходил.\n".format(test.name, date)
        return message_data

    def sendemail(self, request):
        report_data = self.getreportdata(request)
        email_for = report_data['email_for']
        email_from = report_data['email_from']
        theme = report_data['theme']
        message_data = report_data['message_data']
        email_attr = (
            f'{theme} от {email_from}',
            message_data,
            email_from,
            email_for
        )
        try:
            send_mail(*email_attr)
        except BadHeaderError:
            self.data.message_status = 'Не отправлено'


class ClearResultView(UserPassesTestMixin, generic.FormView):

    def post(self, request):
        dict_data = dict(request.POST)
        clear_data = self.clearpostdata(dict_data)
        self.clear(clear_data)
        return HttpResponseRedirect(reverse("studenttesting:students"))

    def get(self, request):
        return HttpResponseRedirect(reverse("studenttesting:students"))

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 3:
            return False
        return True

    def clear(self, clear_data):
        for user, tests in clear_data.items():
            self.clearresult(user, tests)

    def clearresult(self, user, tests):
        for test in tests:
            Result.objects.filter(user=user, test=test).delete()
        return True


    def clearpostdata(self, data):
        return dict((
            self.parseuser(key),
            [self.parsetest(i) for i in list(data[key])]
        ) for key in data if 'user' in key)

    def parseuser(self, user):
        return int(user.split('_')[-1])

    def parsetest(self, test):
        return int(test.split('_')[-1])


class FeedbackView(UserPassesTestMixin, generic.FormView):
    template_name = "studenttesting/feedback.html"
    form_class = FeedbackForm
    forms = FeedbackForm()
    success_url = reverse_lazy("studenttesting:feedback")
    data = CommonObject()

    def setup(self, request, *args, **kwargs):
        self.request = request

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 2:
            return False
        return True

    def form_valid(self, form):
        return super().form_valid(form)

    def post(self, request, *args, **kwargs):
        self.data.message_status = 'Сообщение отправлено'
        self.sendemail(request.POST)
        return super().post(request, args, kwargs)

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        self.data.menu = getmenu(self.request)
        context['data'] = self.data
        return context

    def sendemail(self, data):
        email_for = [CustomUser.objects.get(pk=data['teacher'])]
        email_from = self.request.user
        theme = data['theme']
        message_data = data['data']
        email_attr = (
            f'{theme} от {email_from}',
            message_data,
            email_from,
            email_for
        )
        try:
            send_mail(*email_attr)
        except BadHeaderError:
            self.data.message_status = 'Не отправлено'


class TestView(UserPassesTestMixin, generic.DetailView):
    model = Answer
    template_name = "studenttesting/test.html"
    context_object_name = 'list_of_result'
    data = CommonObject()

    def setup(self, request, *args, **kwargs):
        self.kwargs = kwargs
        self.pk = kwargs['pk']
        self.request = request

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 2:
            return False
        return True

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        self.data.result = list()
        self.data.menu = getmenu(self.request)
        self.data.test = Test.objects.get(pk=self.pk)
        self.data.answers = Answer.objects.filter(test=self.data.test.id)
        self.data.questions = Question.objects.filter(test=self.data.test.id)
        context['data'] = self.data
        return context

    def get(self, request, *args, **kwargs):
        return super().get(request, *args, **kwargs)


class ResultView(UserPassesTestMixin, generic.DetailView):
    model = Answer
    template_name = "studenttesting/results.html"
    context_object_name = 'list_of_result'
    data = CommonObject()

    def parsequestion(self, question):
        return int(question.split("_")[-1])

    def parseanswer(self, answer):
        return int(answer.split("_")[-1])

    def addresult(self, user_answers):
        for question, answer in user_answers.items():
            result = Result()
            result.user = CustomUser.objects.get(pk=self.request.user.id)
            result.test = Test.objects.get(pk=self.pk)
            result.question = Question.objects.get(pk=question)
            result.answer = Answer.objects.get(pk=answer)
            result.completion_date = timezone.localtime(timezone.now())
            result.save()
        return

    def getformanswer(self, request):
        return dict((
            self.parsequestion(key),
            self.parseanswer(request.POST[key]
        )) for key in request.POST if 'question' in key)

    def setup(self, request, *args, **kwargs):
        self.kwargs = kwargs
        self.pk = kwargs['pk']
        self.request = request
        if "POST" in request.method:
            form_answer = self.getformanswer(request)
            self.addresult(form_answer)

    def test_func(self):
        if self.request.user.is_anonymous or isinstance(self.request.user.user_type, type(None)) or self.request.user.user_type.id == 2:
            return False
        return True

    def get_context_data(self, *, object_list=None, **kwargs):
        context = super().get_context_data(**kwargs)
        self.data.result = list()
        self.data.menu = getmenu(self.request)
        self.data.test = Test.objects.get(pk=self.pk)
        self.data.results = Result.objects.filter(test=self.data.test.id, user=self.request.user)
        self.data.answers = list()
        self.data.questions = list()
        context['data'] = self.data
        for question in Question.objects.filter(test=self.data.test.id):
            self.data.questions.append(self.getquestionstatus(question))
        for answer in Answer.objects.filter(test=self.data.test.id):
            self.data.answers.append(self.getanswerstatus(answer))
        self.data.notes = self.getnotes()
        return context

    def getnotes(self):
        positive = 0
        negative = 0
        score = 0.0
        negative += len([item[1] for item in self.data.questions if len(item[1]) > 0])
        negative += len([item for item in self.data.results if not item.answer.correct])
        positive += len([item for item in self.data.results if item.answer.correct])
        score += round(positive/len([item[1] for item in self.data.questions]), 2)
        return [positive, negative, score]

    def getquestionstatus(self, question):
        if question in [item.question for item in self.data.results]:
            return [question, '']
        else:
            return [question, 'Нет ответа']

    def getanswerstatus(self, answer):
        if answer in [item.answer for item in self.data.results]:
            return [answer, self.checkanswercorrect(answer)]
        else:
            return [answer, '']

    def checkanswercorrect(self, answer):
        if answer.correct:
            return "Верно"
        else:
            return "Не верно"

    def get(self, request, *args, **kwargs):
        return super().get(request, *args, **kwargs)

    def post(self, request, *args, **kwargs):
        return super().get(request, *args, **kwargs)       



# def logout(request):
#     # сброс учётной информации из сессии
#     request.session['user_type'] = None
#     request.session['user'] = None
#     return HttpResponseRedirect(reverse("studenttesting:index"))
