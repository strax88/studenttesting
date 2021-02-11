from django.contrib import admin
from django import forms
from studenttesting.models import Student, Teacher, Test, Question, Answer, Result, Menu


# Register your models here.
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


class ResultForm(forms.ModelForm):

    class Meta:
        model = Answer
        exclude = ['correct', model.question]


class ResultsAdmin(admin.ModelAdmin):
    exclude = ['test', 'question', 'text']
    form = ResultForm


admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Test, TestAdmin)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Answer)
admin.site.register(Result, ResultsAdmin)
admin.site.register(Menu)
