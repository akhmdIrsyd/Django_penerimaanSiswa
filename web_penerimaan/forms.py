from django import forms
from django.contrib.auth.forms import UserCreationForm
from .models import User, Student, Pengumuman, alur, gambar, visimisi


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
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.fields['password1'].label = 'password'
        self.fields['password2'].label = 'Konfirmasi password'
        
    class Meta:
        model = User
        fields = ('email', 'user_type', 'password1', 'password2')
        labels = {
            "email": "Email",
            "user_type": "Tipe Akun",
            "password1": "Password",
            "password2": "Konfirmasi Password"
        }


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
        fields = ['nisn', 'nama', 'alamat', 'sekolah','alamat', 'sekolah','nilai_skhu']
        labels = {
            "sekolah": "sekolah asal",
            "nilai_skhu": "nilai SKHU",
        }

class StudentAForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['nisn', 'nama', 'alamat', 'sekolah', 'alamat', 'sekolah', 'nama_ayah',
                  'nama_ibu', 'alamat_orang_tua', 'Penghasilan_ayah', 'Penghasilan_ibu', 'foto', 'ijazah', 'SKHUN','nilai_skhu', 'status_pendaftaran', 'status_verifikasi', 'status_seleksi','nilai_skhu']
        labels = {
            "sekolah": "sekolah asal",
            "nilai_skhu": "nilai SKHU",
        }
class ParentForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['nama_ayah', 'nama_ibu', 'alamat_orang_tua', 'Penghasilan_ayah', 'Penghasilan_ibu']

class FileForm(forms.ModelForm):
    class Meta:
        model = Student
        fields = ['foto', 'ijazah', 'SKHUN']
        labels = {
            "foto": "Foto (max 2MB, file tipe .jpg)",
            "ijazah": "Ijazah (max 2MB,file tipe .pdf)",
            "SKHUN": "SKHUN (max 2MB,file tipe .pdf)",
        }


class AkunForm(forms.ModelForm):
    new_password = forms.CharField(max_length=500, required=False, label="Password Baru")
    class Meta:
        model = User
        fields = ['first_name', 'last_name','email','new_password']
        labels = {
            "first_name": "Nama Awal",
            "last_name": "Nama Akhir",
            "email": "Email",
            "new_password": "Password Baru",
        }


class AkunSiswaForm(forms.ModelForm):
    new_password = forms.CharField(max_length=500, required=False, label="Password Baru")
    class Meta:
        model = User
        fields = ['new_password']
        labels = {
            "new_password": "Password Baru",
        }


class PengumumanForm(forms.ModelForm):
    
    class Meta:
        model = Pengumuman
        fields = ['judul','isi']

class AlurForm(forms.ModelForm):
    class Meta:
        model = alur
        fields = ['alur']


class GambarForm(forms.ModelForm):

    class Meta:
        model = gambar
        fields = ['gambar']


class VisimisiForm(forms.ModelForm):

    class Meta:
        model = visimisi
        fields = ['judul', 'visimisi']
