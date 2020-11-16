from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import User, Student, Pengumuman


class SignUpForm(UserCreationForm):
    nisn = forms.CharField(max_length=50)

    class Meta:
        model = User
        fields = ('email', 'nisn', 'password1', 'password2')


#USER_CHOICES = ( 
#    (2, 'comitte'),
#    (3, 'admin'),
#)
class SignUp_panitiaForm(UserCreationForm):
    #User_type = forms.ChoiceField(choices=USER_CHOICES)
    class Meta:
        model = User
        fields = ('email', 'user_type', 'password1', 'password2')


class LoginForm(UserCreationForm):

    class Meta:
        model = User
        fields = ('email','password')


class UserForm(forms.ModelForm):

    class Meta:
        model = User
        fields = ['email']

class StudentForm(forms.ModelForm):

    class Meta:
        model = Student
        fields = ['nisn', 'nama', 'alamat', 'sekolah','alamat', 'sekolah']

class StudentAForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['nisn', 'nama', 'alamat', 'sekolah', 'alamat', 'sekolah', 'nama_ayah',
                  'nama_ibu', 'alamat_orang_tua', 'Penghasilan_ayah', 'Penghasilan_ibu', 'foto', 'ijazah', 'SKHUN', 'status_pendaftaran', 'status_verifikasi', 'status_seleksi']

class ParentForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['nama_ayah', 'nama_ibu', 'alamat_orang_tua', 'Penghasilan_ayah', 'Penghasilan_ibu']

class FileForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['foto', 'ijazah', 'SKHUN']


class AkunForm(forms.ModelForm):
    new_password = forms.CharField(max_length=500, required=False)
    class Meta:
        model = User
        fields = ['first_name', 'last_name','email','new_password']


class AkunSiswaForm(forms.ModelForm):
    new_password = forms.CharField(max_length=500, required=False)
    class Meta:
        model = User
        fields = ['new_password']


class PengumumanForm(forms.ModelForm):
    
    class Meta:
        model = Pengumuman
        fields = ['judul','isi']
