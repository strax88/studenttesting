from django.contrib.auth.forms import UserChangeForm, UserCreationForm
from django import forms
from .models import CustomUser


class CustomUserCreationForm(UserCreationForm):

    class Meta(UserCreationForm):
        model = CustomUser
        fields = ('email',)


class CustomUserChangeForm(UserChangeForm):

    class Meta:
        model = CustomUser
        fields = ('email',)


class FeedbackForm(forms.Form):
    CHOICE = [(user.id, user.full_name) for user in CustomUser.objects.filter(user_type=2)]
    teacher = forms.ChoiceField(label="", choices=CHOICE)
    theme = forms.CharField(label='', max_length=120, widget=forms.TextInput(attrs={'placeholder': 'Тема'}))
    data = forms.CharField(label='', max_length=3000, widget=forms.Textarea(attrs={'placeholder': 'Введите текст (не более 3000 символов)'}))


class MainPageForm(forms.ModelForm):

    def save(self, pk):
        user = CustomUser.objects.get(pk=pk)
        if self.checkavatar(self.cleaned_data['avatar']):
            user.avatar = self.mp['avatar']
        if self.checkphone(self.cleaned_data['phone']):
            user.phone = self.cleaned_data['phone']
        user.save()
        return user

    def checkavatar(self, avatar):
        if avatar and len(avatar) > 0:
            return True
        return False

    def checkphone(self, phone):
        if phone and len(phone) > 0:
            return True
        return False

    class Meta:
        model = CustomUser
        fields = ['avatar', 'phone']

        widgets = {
            'avatar': forms.ClearableFileInput(),
            'phone': forms.TextInput(attrs={'placeholder':'+7-XXX-XXX-XX-XX'})
        }