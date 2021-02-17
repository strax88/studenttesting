# -*- cofing: utf-8 -*-
from .models import Test
# from .models import Result, Test
from background_task import background
from django.core.mail import send_mail, BadHeaderError
from django.utils import timezone
import datetime
import time


@background(schedule=3)
def notify_administrator(timer=24*60*60):
    print("\nСледующая отправка: %s\n" % (timezone.localtime(
        timezone.now())+datetime.timedelta(seconds=timer)))
    current_date = timezone.localtime(timezone.now()).strftime("%Y-%m-%d")
    year = current_date.split("-")[0]
    month = current_date.split("-")[1]
    day = current_date.split("-")[2]
    results = Result.objects.filter(
        completion_date__year=year,
        completion_date__month=month,
        completion_date__day=day
    )
    email_for = ["kstr88@mail.ru"]
    email_from = 'studenttesting@example.com'
    theme = "Отчёт по количеству пройденных тестов за {0}.{1}.{2}".format(
        day, month, year)
    temp_dict = dict()
    message_data = ''
    for record in results:
        temp_dict[record.test] = set()
    for record in results:
        temp_dict[record.test].add(record.student)
    for key, value in temp_dict.items():
        message_data += "Тест '{0}' пройден {1} раз{2}.\
        Список студентов: {3}.\n".format(
            key.name,
            len(value),
            endword(len(value)),
            ", ".join([item.full_name for item in value]))
    for test in Test.objects.all():
        if not test in temp_dict.keys():
            message_data += "Тест '{0}' сегодня никто не проходил.\n".format(
                test.name)
    message_data += "\nСледующая отправка: %s\n" % (timezone.localtime(
        timezone.now())+datetime.timedelta(seconds=timer))
    try:
        send_mail(f'{theme} от {email_from}', message_data,
                  email_from, email_for)
    except BadHeaderError as e:
        print(e)
    time.sleep(timer)


def endword(var):
    # изменение окончания слова "раз" по количеству
    if var % 10 in [2, 3, 4]:
        return 'а'
    return ''
