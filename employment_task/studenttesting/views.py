from django.shortcuts import render, redirect
from django.urls import reverse
from django.http import HttpResponse, HttpResponseRedirect
from django.conf import settings
from .models import Student, Teacher, Menu, Test, Question, Answer, Result
from django.core.files.storage import FileSystemStorage
from django.template.context_processors import media, static
from django.core.mail import send_mail, BadHeaderError
from django.utils import timezone
from .script import notify_administrator, endword
import os

# Create your views here.
def studentaction(task, request, *args):
    IDs = request.session['user']
    menu = getmenu(request)
    user = Student.objects.get(pk=IDs)
    if task == 'mainpage':
        # назначение аватарки по умолчанию
        current_avatar = settings.STATIC_URL + 'studenttesting/default_avatar.png'
        # назначение телефона по умолчанию
        phone_error = ''
        # изменение аватарки при наличии информации о файле в базе данных
        if user.avatar and len(user.avatar) > 0 :
            current_avatar = user.avatar
        # загрузка аватарки в медиа-каталог
        if request.method == 'POST' and 'avatar' in request.FILES:
            avatar = request.FILES['avatar']
            fs = FileSystemStorage()
            filename = fs.save('.'.join(avatar.name.split('.')[:-1]) + "_student_" + str(IDs) + "." + avatar.name.split('.')[-1], avatar)
            uploaded_file_url = fs.url(filename)
            uploaded_file = str(settings.BASE_DIR) + uploaded_file_url
            user.avatar = uploaded_file_url
            user.save()
            current_avatar = user.avatar
        # проверка на наличие файла аватарки, если отсутствует - применяется аватарка по умолчанию
        if not os.path.exists(str(settings.BASE_DIR) + current_avatar):
            current_avatar = settings.STATIC_URL + 'studenttesting/default_avatar.png'
        # проверка ввода телефонного номера, не менее 5 символов
        if request.method == 'POST' and request.POST['phone']:
            if len(request.POST['phone']) < 5:
                phone_error = 'Неверный формат номера'
            else:
                user.phone = request.POST['phone']
                user.save()
        # формирование номера телефона для отображения в шаблоне
        if not user.phone:
            phone = ''
        else:
            phone = user.phone
        return menu, user, current_avatar, phone, phone_error
    elif task == 'tests':
        tests = Test.objects.all()
        student_results = Result.objects.filter(student=IDs)
        test_results = dict()
        for elem in tests:
            if elem.id in [var.test.id for var in student_results]:
                test_results[elem.id] = 'Пройдено'
            else:
                test_results[elem.id] = 'Не пройдено'
        return menu, user, tests, test_results
    elif task == 'history':
        tests = Test.objects.all()
        student_results = Result.objects.filter(student=IDs)
        results_dict = dict()
        positive = 0
        negative = 0
        raiting = 0
        for elem in tests:
            if elem.id in [var.test.id for var in student_results]:
                results_dict[elem] = dict()
                results_dict[elem]['positive'] = 0
                results_dict[elem]['negative'] = 0
                question_count = 0
                test_date = ''
                for item in student_results:
                    if elem.id == item.test.id:
                        question_count += 1
                        test_date = item.completion_date
                        # results_dict[elem][item.question.id] = [item.answer.correct, item.completion_date]
                        if item.answer.correct:
                            results_dict[elem]['positive'] += 1
                        else:
                            results_dict[elem]['negative'] += 1

                results_dict[elem]['date'] = test_date
                results_dict[elem]['negative'] += (len(Question.objects.filter(test=elem)) - question_count)


                results_dict[elem]['raiting'] = round(results_dict[elem]['positive']/len(Question.objects.filter(test=elem)), 2)
        return menu, user, results_dict
    elif task == 'feedback':
        message_status = ""
        teachers = Teacher.objects.all()
        if request.method == 'POST':
            # отправка сообщения на почту преподавателю
            email_for = [request.POST['teacher']]
            email_from = user.email
            theme = request.POST['theme']
            message_data = request.POST['data']
            try:
                send_mail(f'{theme} от {email_from}', message_data,
                      email_from, email_for)
            except BadHeaderError:
                message_status = 'Сообщение не отправлено'
            message_status = 'Сообщение отправлено'
        return menu, user, teachers, message_status
    elif task == 'test':
        IDtest = args[0]
        test = Test.objects.get(pk=IDtest)
        if request.method == 'POST':
            request.session['sort'] = 'text'
            test_dict = getTestDict(IDtest, 'text')
        else:
            test_dict = getTestDict(IDtest)
        questions_count = list()
        count = 0
        for q in test_dict.keys():
            count += 1
            questions_count.append([q.id, count])
        return menu, user, test, questions_count, test_dict
    elif task == 'results':
        IDtest = args[0]
        if request.session['sort']:
            test_dict = getTestDict(IDtest, request.session['sort'])
            request.session['sort'] = None
        else:
            test_dict = getTestDict(IDtest)
        test = Test.objects.get(pk=IDtest)
        questions = Question.objects.filter(test=IDtest)
        # добавление информации о прохождении теста в базу данных
        if request.method == 'POST':
            answers = dict()
            # формирование списка ответов
            for q in questions:
                for elem in request.POST:
                    if 'question_' + str(q.id) in elem:
                        answers[q.id] = int(request.POST[elem].split('answer_')[-1])
            # если не было ответов, перенаправление на тест
            if len(answers) == 0:
                return HttpResponseRedirect(reverse("studenttesting:test", args=(IDtest,)))
            # добавление информации в базу данных
            for q_id, a_id in answers.items():
                newResult = Result(
                    test=Answer.objects.get(pk=a_id).test,
                    student=Student.objects.get(pk=IDs),
                    question=Question.objects.get(pk=q_id),
                    answer=Answer.objects.get(pk=a_id))
                newResult.save()
        # формирование данных для отображения
        results_dict = dict()
        positive = 0
        negative = 0
        raiting = 0
        for elem in Result.objects.filter(test=IDtest, student=IDs):
            results_dict[elem.question.id] = elem
        for q in test_dict.keys():
            if not q.id in results_dict:
                results_dict[q.id] = [0, 'Вы не давали ответ на данный вопрос']
                negative += 1
            else:
                var = results_dict[q.id].answer.id
                if results_dict[q.id].answer.correct:
                    results_dict[q.id] = list()
                    results_dict[q.id] = [var, "Ответ верный"]
                    positive += 1
                else:
                    results_dict[q.id] = list()
                    results_dict[q.id] = [var, "Ответ неверный"]
                    negative += 1
        raiting = round(positive/len(test_dict), 2)
        questions_count = list()
        count = 0
        for q in test_dict.keys():
            count += 1
            questions_count.append([q.id, count])
        return menu, user, test, positive, negative, raiting, test_dict, questions_count, results_dict
    elif task == '':
        return menu, user

def teacheraction(task, request, *args):
    IDt = request.session['user']
    menu = getmenu(request)
    user = Teacher.objects.get(pk=IDt)
    if task == 'mainpage':
        return menu, user
    elif task == 'students':
        students = Student.objects.all()
        tests = Test.objects.all()
        results_dict = dict()
        if request.method == 'POST':
            post_data = dict(request.POST)
            for student in students:
                for post_record in post_data.keys():
                    if 'student_' + str(student.id) == post_record:
                        for test in tests:
                            if 'test_' + str(test.id) in post_data[post_record]:
                                Result.objects.filter(student=student, test=test).delete()
        for student in students:
            results_dict[student] = dict()
            positive = 0
            negative = 0
            raiting = 0
            IDs = student
            student_results = Result.objects.filter(student=IDs)
            for elem in tests:
                if elem.id in [var.test.id for var in student_results]:
                    results_dict[student][elem] = dict()
                    results_dict[student][elem]['positive'] = 0
                    results_dict[student][elem]['negative'] = 0
                    question_count = 0
                    test_date = ''
                    for item in student_results:
                        if elem.id == item.test.id:
                            question_count += 1
                            test_date = item.completion_date
                            # results_dict[student][elem][item.question.id] = [item.answer.correct, item.completion_date]
                            if item.answer.correct:
                                results_dict[student][elem]['positive'] += 1
                            else:
                                results_dict[student][elem]['negative'] += 1

                    results_dict[student][elem]['date'] = test_date
                    results_dict[student][elem]['negative'] += (len(Question.objects.filter(test=elem)) - question_count)
                    results_dict[student][elem]['raiting'] = round(results_dict[student][elem]['positive']/len(Question.objects.filter(test=elem)), 2)
        
            
        return menu, user, results_dict
    elif task == 'reports':
        current_date = timezone.localtime(timezone.now()).strftime("%Y-%m")
        message_status = ''
        if request.method == 'POST':
            post_data = dict(request.POST)
            date = post_data['calendar'][0]
            year = date.split("-")[0]
            month = date.split("-")[1]
            results = Result.objects.filter(completion_date__year=year, completion_date__month=month)
            email_for = [user.email]
            email_from = 'studenttesting@example.com'
            theme = "Отчёт по количеству пройденных тестов за {0}.{1}".format(month, year)
            temp_dict = dict()
            message_data = ''
            for record in results:
                temp_dict[record.test] = set()
            for record in results:
                temp_dict[record.test].add(record.student)
            for key, value in temp_dict.items():
                message_data += "Тест '{0}' пройден {1} раз{2}. Список студентов: {3}.\n".format(
                    key.name,
                    len(value),
                    endword(len(value)),
                     ", ".join([item.full_name for item in value]))
            for test in Test.objects.all():
                if not test in temp_dict.keys():
                    message_data += "Тест '{0}' в этом месяце никто не проходил.\n".format(test.name)

            try:
                send_mail(f'{theme} от {email_from}', message_data,
                      email_from, email_for)
            except BadHeaderError:
                message_status = 'Сообщение не отправлено'
            message_status = 'Сообщение отправлено'
        return menu, user, current_date, message_status
    elif task == '':
        return menu, user

def index(request):
    if 'user_type' in request.session and request.session['user']:
        return HttpResponseRedirect(reverse("studenttesting:{0}".format(request.session['user_type'])))
    request.session['base_path'] = request.get_full_path()
    error_email = ''
    error_password = ''
    # проверка при отправке данных формы
    if request.POST:
        # проверка корректности email
        if request.POST['email'] == '':
            error_email = 'Введите email'
        elif not "@" in request.POST['email'] or not "." in request.POST['email']:
            error_email = 'Введите корректный email'
        elif len(request.POST['email'].split('@')[0]) <= 3 or len(request.POST['email'].split('@')[1]) <= 5 or len(request.POST['email'].split('.')[-1]) <= 1:
            error_email = 'недостаточно символов email'
        # проверка корректности пароля
        if request.POST['password'] == '':
            error_password = 'Введите пароль'
        elif len(request.POST['password']) <= 3  :
            error_password = 'Недостаточно символов пароля'
        # вывод на экран информации об ошибках при вводе email или пароля
        if error_email != '' or error_password != '':
            return render(request, 'studenttesting/auth.html', {
                'error_email': error_email,
                'error_password': error_password,
                'email': request.POST['email'],
                'password': request.POST['password']
                })
        # проверка введённых данных на наличие в базе данных
        if request.POST['email'] and request.POST['password']:
            user = False
            user_flag = 1
            if len(Student.objects.filter(email=request.POST['email'])) > 0:
                user = Student.objects.filter(email=request.POST['email'])[0]
                user_flag = 2
            if len(Teacher.objects.filter(email=request.POST['email'])) > 0:
                user = Teacher.objects.filter(email=request.POST['email'])[0]
                user_flag = 3
            if user:
                # проверка корректности пароля
                if user.password == request.POST['password']:
                    if user_flag == 2:
                        request.session['user_type'] = 'student'
                        request.session['user'] = user.id
                        return HttpResponseRedirect(reverse("studenttesting:student"))
                    elif user_flag == 3:
                        request.session['user_type'] = 'teacher'
                        request.session['user'] = user.id
                        return HttpResponseRedirect(reverse("studenttesting:teacher"))
                else:
                    error_password = 'Пароль не подходит'
                    return render(request, 'studenttesting/auth.html', {
                        'error_password': error_password,
                        'email': request.POST['email'],
                        'password': request.POST['password']
                        })
            return HttpResponse("==>%s<br />==>%s" % (request.POST['email'], request.POST['password']))
    # загрузка формы
    test_data = {'student': ['ivanovsr@mail.ru', '111111'], 'teacher':['repinanv@google.com', '444444']}
    
    return render(request, 'studenttesting/auth.html', {'request': request, 'email': test_data['teacher'][0], 'password': test_data['teacher'][1]})
    return render(request, 'studenttesting/auth.html', {'request': request, 'email': test_data['student'][0], 'password': test_data['student'][1]})

def getmenu(request):
    menu = list()
    user_types = {'student': 2, 'teacher': 3}
    unsorted_menu = list()
    max_element = 0
    for elem in Menu.objects.filter(role=1):
        unsorted_menu.append(elem.position)
    for elem in Menu.objects.filter(role=user_types[request.session['user_type']]):
        unsorted_menu.append(elem.position)
    unsorted_menu.sort()
    for position in range(len(unsorted_menu)):
        menu.append(Menu.objects.filter(position=unsorted_menu[position])[0])
    return menu

def student(request):
    # страница студента
    if request.session['user_type'] == 'student':
        menu, user, current_avatar, phone, phone_error = studentaction('mainpage', request)
        return render(request, 'studenttesting/mainpage.html', {
            'menu': menu,
            'full_name': user.full_name,
            'user_type': request.session['user_type'],
            'email': user.email,
            'avatar': current_avatar,
            'phone': phone,
            'phone_error': phone_error,
            })
    else:
        return HttpResponseRedirect(reverse("studenttesting:index"))

def teacher(request):
    # страница преподавателя
    if request.session['user_type'] == 'teacher':
        menu, user = teacheraction('mainpage', request)
        return render(request, 'studenttesting/mainpage.html', {
            'menu': menu,
            'full_name': user.full_name,
            'user_type': request.session['user_type'],
            'email': user.email,
            })
    else:
        return HttpResponseRedirect(reverse("studenttesting:index"))

def tests(request):
    # список тестов
    if 'user_type' in request.session and request.session['user']:
        # интерфейс для студента
        if request.session['user_type'] == 'student':
            menu, user, tests, test_results = studentaction("tests", request)
            return render(request, 'studenttesting/tests.html', {
                'menu': menu,
                'full_name': user.full_name,
                'user_type': request.session['user_type'],
                'tests': tests,
                'results': test_results,
                })
        # интерфейс для преподавателя
        elif request.session['user_type'] == 'teacher':
            pass
    return HttpResponseRedirect(reverse("studenttesting:index"))

def history(request):
    # история тестов
    if 'user_type' in request.session and request.session['user']:
        # интерфейс для студента
        if request.session['user_type'] == 'student':
            menu, user, results_dict = studentaction("history", request)
            return render(request, 'studenttesting/history.html', {
                'menu': menu,
                'full_name': user.full_name,
                'user_type': request.session['user_type'],
                'results': results_dict,
                })
        # интерфейс для преподавателя
        elif request.session['user_type'] == 'teacher':
            pass
    return HttpResponseRedirect(reverse("studenttesting:index"))

def feedback(request):
    # обратная связь с преподавателем
    if 'user_type' in request.session and request.session['user']:
        # интерфейс для студента
        if request.session['user_type'] == 'student':
            menu, user, teachers, message_status = studentaction("feedback", request)
            return render(request, 'studenttesting/feedback.html', {
                'menu': menu,
                'full_name': user.full_name,
                'user_type': request.session['user_type'],
                'teachers': teachers,
                'message_status': message_status,
                })


        # интерфейс для преподавателя
        elif request.session['user_type'] == 'teacher':
            pass
    return HttpResponseRedirect(reverse("studenttesting:index"))

def getTestDict(IDtest, sort = None):
    test_dict = dict()
    if sort:
        questions = Question.objects.filter(test_id=IDtest).order_by(sort)
    else:
        questions = Question.objects.filter(test_id=IDtest)
    for q in questions:
        test_dict[q] = [a for a in Answer.objects.filter(question=q.id)]
    return test_dict

def test(request, IDtest):
    # формирование данных теста
    if 'user_type' in request.session and request.session['user']:
        # интерфейс для студента
        if request.session['user_type'] == 'student':
            menu, user, test, questions_count, test_dict = studentaction("test", request, IDtest)

            return render(request, 'studenttesting/test.html', {
                'menu': menu,
                'full_name': user.full_name,
                'user_type': request.session['user_type'],
                'test': test,
                'questions_count': questions_count,
                'test_dict': test_dict,
                'path': request.path,
                })
        # интерфейс для преподавателя
        elif request.session['user_type'] == 'teacher':
            pass
    return HttpResponseRedirect(reverse("studenttesting:index"))

def results(request, IDtest):
    # результаты теста
    if 'user_type' in request.session and request.session['user']:
        # интерфейс для студента
        if request.session['user_type'] == 'student':
            menu, user, test, positive, negative, raiting, test_dict, questions_count, results_dict = studentaction("results", request, IDtest)
            return render(request, 'studenttesting/results.html', {
                'menu': menu,
                'full_name': user.full_name,
                'user_type': request.session['user_type'],
                'test': test,
                'positive': positive,
                'negative': negative,
                'raiting': raiting,
                'test_dict': test_dict,
                'questions_count': questions_count,
                'results_dict': results_dict,
                })
        # интерфейс для преподавателя
        elif request.session['user_type'] == 'teacher':
            pass
    return HttpResponseRedirect(reverse("studenttesting:index"))

def reports(request):
    # страница преподавателя
    if request.session['user_type'] == 'teacher':
        menu, user, current_date, message_status = teacheraction('reports', request)
        return render(request, 'studenttesting/reports.html', {
            'menu': menu,
            'full_name': user.full_name,
            'user_type': request.session['user_type'],
            'email': user.email,
            'current_date': current_date,
            'message_status': message_status,
            })
    else:
        return HttpResponseRedirect(reverse("studenttesting:index"))

def students(request):
    # страница преподавателя
    if request.session['user_type'] == 'teacher':
        menu, user, results_dict = teacheraction('students', request)
        return render(request, 'studenttesting/students.html', {
            'menu': menu,
            'full_name': user.full_name,
            'user_type': request.session['user_type'],
            'email': user.email,
            'results': results_dict,
            })
    else:
        return HttpResponseRedirect(reverse("studenttesting:index"))

def detail(request, IDs):
    # страница преподавателя
    if request.session['user_type'] == 'teacher':
        menu, user = teacheraction('mainpage', request)
        return render(request, 'studenttesting/detail.html', {
            'menu': menu,
            'full_name': user.full_name,
            'user_type': request.session['user_type'],
            'email': user.email,
            })
    else:
        return HttpResponseRedirect(reverse("studenttesting:index"))

def logout(request):
    request.session['user_type'] = None
    request.session['user'] = None
    return HttpResponseRedirect(reverse("studenttesting:index"))


