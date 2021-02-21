from django.db import models
from django.utils import timezone
from django.contrib.auth.models import PermissionsMixin, AbstractBaseUser, BaseUserManager, AnonymousUser

# Create your models here.

class CustomUserManager(BaseUserManager):
    def create_user(self, email, password):
        user = self.model(email=email, password=password)
        user.set_password(password)
        user.is_staff = False
        user.is_superuser = False
        user.save(using=self._db)
        return user
    
    def create_superuser(self, email, password):
        user = self.model(email=email, password=password)
        user.set_password(password)
        user.is_active = True
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self._db)
        return user

    def get_by_natural_key(self, email_):
        return self.get(email=email_)



class UserType(models.Model):
    type_name = models.CharField("Тип пользователя", max_length=50)

    def __str__(self):
        return self.type_nam
    

class CustomUser(AbstractBaseUser, PermissionsMixin):
    full_name = models.CharField("ФИО", max_length=250)
    email = models.EmailField("Электронная почта", max_length=30, unique=True)
    phone = models.CharField("Номер телефона", null=True, blank=True, max_length=20)
    user_type = models.ForeignKey(UserType, on_delete=models.CASCADE, null=True, blank=True)
    is_staff = models.BooleanField("Доступ к панели администратора", default=False)
    is_active = models.BooleanField("Задействовать пользователя", default=True )
    password = models.CharField("Пароль", max_length=150)
    avatar = models.CharField("Изображение пользователя", null=True, blank=True, max_length=300)
    REQUIRED_FIELDS = []
    USERNAME_FIELD = 'email'

    objects = CustomUserManager()

    def get_short_name(self):
        if " " in self.full_name and len(self.full_name.split(" ")) <= 3:
            return self.full_name.split(" ")[1] + " " + self.full_name.split(" ")[2]
        else:
            return self.email

    def natural_key(self):
        return self.email

    def get_full_name(self):
        if len(self.full_name) > 0:
            return self.full_name
        else:
            return self.email

    def get_username(self):
        return self.email

    def __str__(self):
        return self.email





# class Student(models.Model):
#     full_name = models.CharField(max_length=250)
#     email = models.CharField(max_length=30, unique=True)
#     phone = models.CharField(null=True, blank=True, max_length=20)
#     password = models.CharField(max_length=70)
#     avatar = models.CharField(null=True, blank=True, max_length=300)

#     def __str__(self):
#         return self.full_name


# class Teacher(models.Model):
#     full_name = models.CharField(max_length=250)
#     email = models.CharField(max_length=30)
#     password = models.CharField(max_length=70)

#     def __str__(self):
#         return self.full_name


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
    question = models.ForeignKey(
        Question, on_delete=models.CASCADE, default=999)
    text = models.CharField(max_length=500)
    correct = models.BooleanField(default=False)

    def __str__(self):
        if self.correct:
            answer_result = 'Верно'
        else:
            answer_result = 'Неверно'
        return self.text + " - " + answer_result


class Result(models.Model):
    test = models.ForeignKey(Test, on_delete=models.CASCADE)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    question = models.ForeignKey(Question, on_delete=models.CASCADE)
    answer = models.ForeignKey(Answer, on_delete=models.CASCADE)
    completion_date = models.DateTimeField(
        'Дата прохождения', default=timezone.now)

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
