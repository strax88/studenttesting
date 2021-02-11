from django.contrib import admin
from django import forms
from studenttesting.models import Student, Teacher, Test, Question, Answer, Result, Menu


# Register your models here.
class QuestionInline(admin.TabularInline):  # StackedInline
    model = Question
    extra = 1

    def __str__(self):
    	return self.text


class AnswerInline(admin.TabularInline):  # StackedInline
    model = Answer
    extra = 3


class TestAdmin(admin.ModelAdmin):
    fields = ['name']
    # fieldsets = [
    #     (None, {'fields': ['name']}),
    #     ('Questions', {'fields': ['name'], 'classes': ['collapse']}),
    # ]
    inlines = [QuestionInline]
    list_display = ('name',)
    # list_filter = ['pub_date']
    search_fields = ['name']


class QuestionAdmin(admin.ModelAdmin):
    fields = ['text', 'position']
    # fieldsets = [
    #     (None, {'fields': ['name']}),
    #     ('Questions', {'fields': ['text'], 'classes': ['collapse']}),
    # ]
    inlines = [AnswerInline]
    list_display = ('text',)
    # list_filter = ['Test.name']
    # search_fields = ['name']

class ResultForm(forms.ModelForm):

    class Meta:
        model = Answer
        exclude = ['correct', model.question]


class ResultsAdmin(admin.ModelAdmin):
    exclude = ['test', 'question', 'text']
    # fields = ['test']
    form = ResultForm
    # fieldsets = [
    #     ('Test', {'fields': ['test.name']}),
    #     ('Question', {'fields': ['question.text']}),
    #     ('Result', {'fields': ['answer.correct']}),
    # ]


admin.site.register(Student)
admin.site.register(Teacher)
admin.site.register(Test, TestAdmin)
# admin.site.register(Test)
admin.site.register(Question, QuestionAdmin)
admin.site.register(Answer)
admin.site.register(Result, ResultsAdmin)
admin.site.register(Menu)

