from django.db import models
from django.utils import timezone

# Create your models here.


class Student(models.Model):
    full_name = models.CharField(max_length=250)
    email = models.CharField(max_length=30, unique=True)
    phone = models.CharField(null=True, blank=True, max_length=20)
    password = models.CharField(max_length=70)
    avatar = models.CharField(null=True, blank=True, max_length=300)

    def __str__(self):
        return self.full_name


class Teacher(models.Model):
    full_name = models.CharField(max_length=250)
    email = models.CharField(max_length=30)
    password = models.CharField(max_length=70)

    def __str__(self):
        return self.full_name


class Test(models.Model):
    name = models.CharField(max_length=250)

    def __str__(self):
        return self.name


class Question(models.Model):
    test = models.ForeignKey(Test, on_delete=models.CASCADE)
    text = models.CharField(max_length=500)
    position = models.IntegerField(default=0)

    def __str__(self):
        return self.text


class Answer(models.Model):
    test = models.ForeignKey(Test, on_delete=models.CASCADE)
    question = models.ForeignKey(Question, on_delete=models.CASCADE, default=999)
    text = models.CharField(max_length=500)
    correct = models.BooleanField(default=False)

    def __str__(self):
        if self.correct:
            answer_result = 'Верно'
        else:
            answer_result = 'Неверно'
        return self.question.text + ": " + self.text + " - " + answer_result


class Result(models.Model):
    test = models.ForeignKey(Test, on_delete=models.CASCADE)
    student = models.ForeignKey(Student, on_delete=models.CASCADE)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    answer = models.ForeignKey(Answer, on_delete=models.CASCADE)
    completion_date = models.DateTimeField('Дата прохождения', default=timezone.now)

    def __str__(self):
        if self.answer.correct:
            answer_result = 'Верно'
        else:
            answer_result = 'Неверно'
        return self.question.text + ": " + self.answer.text + " - " + answer_result




class Menu(models.Model):
    name = models.CharField('Название', max_length=100)
    url = models.CharField('Ссылка', max_length=255)
    role = models.IntegerField(null=True)
    position = models.PositiveIntegerField('Позиция', default=1)

    def __str__(self):
        return str(self.name)

    class Meta:
        ordering = ('position',)
        verbose_name = 'пункт меню'
        verbose_name_plural = 'Пункты меню'
