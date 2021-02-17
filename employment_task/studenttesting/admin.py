from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django import forms
from studenttesting.models import CustomUser, UserType
# from studenttesting.models import Student, Teacher, Test, Question, Answer, Result, Menu#, CustomUser
from studenttesting.models import Test, Question, Answer, Menu#, CustomUser
from .forms import CustomUserChangeForm, CustomUserCreationForm
# Register your models here.

class CustomUserAdmin(UserAdmin):
    add_form = CustomUserCreationForm
    form = CustomUserChangeForm
    model = CustomUser
    list_display = ('email', 'is_staff', 'is_active')
    list_filter = ('email', 'is_staff', 'is_active')
    fieldsets = (
        (None, {'fields': ('full_name','email','phone', 'user_type', 'password', 'avatar')}),
        ('Permissions', {'fields': ('is_staff', 'is_active')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide', ),
            'fields': ('email', 'password1', 'password2', 'is_staff', 'is_active'),
            }),
    )
    search_fields = ('email',)
    ordering = ('email',)

admin.site.register(CustomUser, CustomUserAdmin)
admin.site.register(UserType)



class QuestionInline(admin.TabularInline):
    model = Question
    extra = 1

    def __str__(self):
        return self.text


class AnswerInline(admin.TabularInline):
    model = Answer
    extra = 3


class TestAdmin(admin.ModelAdmin):
    fields = ['name']
    inlines = [QuestionInline]
    list_display = ('name',)
    search_fields = ['name']


class QuestionAdmin(admin.ModelAdmin):
    fields = ['text', 'position']
    inlines = [AnswerInline]
    list_display = ('text',)


# class ResultForm(forms.ModelForm):

#     class Meta:
#         model = Answer
#         exclude = ['correct', model.question]


# class ResultsAdmin(admin.ModelAdmin):
#     exclude = ['test', 'question', 'text']
#     form = ResultForm


# admin.site.register(Student)
# admin.site.register(Teacher)
admin.site.register(Test, TestAdmin)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Answer)
# admin.site.register(Result, ResultsAdmin)
admin.site.register(Menu)
