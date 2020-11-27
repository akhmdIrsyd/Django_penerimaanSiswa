
from django.views.decorators.csrf import csrf_protect
from django.contrib.auth import login, authenticate, logout
from django.shortcuts import render, redirect, HttpResponse
from .forms import SignUpForm, StudentForm, UserForm, SignUp_panitiaForm, AkunForm, StudentAForm, ParentForm, FileForm, AkunSiswaForm, PengumumanForm
from django.contrib.auth.decorators import login_required
from .models import User,Student,Pengumuman,tombol
from django.contrib.auth.hashers import make_password
from django.contrib import messages



# Create your views here.

#signup siswa
def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST)
        if form.is_valid():
            user = form.save()
            user.refresh_from_db()  # load the profile instance created by the signal
            user.save()
            if user.user_type == 1:
                students = Student()
                students.user = user
                students.nisn = form.cleaned_data.get('nisn')
                students.save()
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(email=user.email, password=raw_password)
            login(request, user)
            return redirect('DashBoard')
    else:
        form = SignUpForm()
    return render(request, 'signup1.html', {'form': form})

#signup panitia dan admin
def signup_panitia(request):
    user = request.user
    mail=user.email
    if request.method == 'POST':
        form = SignUp_panitiaForm(request.POST)
        if form.is_valid():
            user = form.save()
            user.refresh_from_db()  # load the profile instance created by the signal
            user.save()
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(email=user.email, password=raw_password)
            return redirect('akun')
    else:
        form = SignUp_panitiaForm()
    return render(request, 'biodata.html', {'form': form, 'mail': mail})

def Logout(request):
    logout(request)
    return redirect('login')


@csrf_protect
def Login(request):
    if (request.method == 'POST'):
        email = request.POST.get('email')  # Get email value from form
        password = request.POST.get('password')  # Get password value from form
        user = authenticate(request, email=email, password=password)

        if user is not None:
            login(request, user)
            #type_obj = user_type.objects.get(user=user)
            #if user.is_authenticated and type_obj.is_student:
            if user.is_authenticated :
                return redirect('DashBoard')  # Go to student home
            #elif user.is_authenticated and type_obj.is_teach:
            #elif user.is_authenticated and user.user_type == 2:
             #   return redirect('Pendaftar')  # Go to teacher home
        else:
            # Invalid email or password. Handle as you wish
            return redirect('login')

    return render(request, 'login1.html')

#update data akun
@login_required
def Ganti_password(request):
    user = request.user
    mail = user.email
    data_akuns = User.objects.get(id=user.id)
    if request.method == 'POST':
        form = AkunForm(request.POST, instance=data_akuns)

        if form.is_valid():
            password = form.cleaned_data.get('new_password')
            if password is None:
                password = user.password
            else:
                password = password
            data_akuns.password = make_password(password)
            form.save()
            return redirect('akun')
    else:
        form = AkunForm(instance=data_akuns)
    context = {
        'rows': data_akuns,
        'mail': mail,
        'form': form,
    }
    return render(request, 'biodata.html', context)

@login_required
def Ganti_passwordSiswa(request):
    user = request.user
    mail = user.email
    data_akuns = User.objects.get(id=user.id)
    if request.method == 'POST':
        form = AkunSiswaForm(request.POST, instance=data_akuns)

        if form.is_valid():
            password = form.cleaned_data.get('new_password')
            if password is None:
                password = user.password
            else:
                password = password
            data_akuns.password = make_password(password)
            form.save()
            return redirect('akun')
    else:
        form = AkunSiswaForm(instance=data_akuns)
    context = {
        'rows': data_akuns,
        'mail': mail,
        'form': form,
    }
    return render(request, 'biodata.html', context)


@login_required
def index(request):
    #Data_siswa = data_siswa.objects.all()
    context = {
               }
    return render(request, 'dashboard.html', context)


def xxx(request):
    #Data_siswa = data_siswa.objects.all()
    context = {
    }
    return render(request, 'form_pengumuman.html', context)

#list pendaftar
@login_required
def pendaftar(request):
    Data_siswa = User.objects.all().filter(user_type=1)
    context = {
        'rows': Data_siswa,
    }
    return render(request, 'pendaftar.html', context)

#update data akun
@login_required
def Update_Pendaftar(request, pk):
    user = request.user
    mail = user.email
    data_users = User.objects.get(id=pk)
    data_students = Student.objects.get(user_id=pk)
    if request.method == 'POST':
        form1 = UserForm(
            request.POST, instance=data_users)
        form = StudentAForm(
            request.POST, request.FILES, instance=data_students)
        if form.is_valid() and form1.is_valid():
            form.save()
            form1.save()
            return redirect('Pendaftar')
    else:
        form1 = UserForm(instance=data_users)
        form = StudentAForm(instance=data_students)
    context = {
        'form': form,
        'form1': form1,
        'mail': mail,
    }
    return render(request, 'biodata.html', context)


@login_required
def Delete_Pendaftar(request, pk):
    data_akuns = User.objects.get(id=pk)
    data_akuns.delete()
    return redirect('Pendaftar')



#list akun
@login_required
def Akun(request):
    user = request.user
    mail = user.email
    Data_user = User.objects.all().exclude(id=user.id)
    context = {
        'rows': Data_user,
        'mail': mail,
    }
    return render(request, 'akun.html', context)

#update data akun
@login_required
def Update_Akun(request, pk):
    user = request.user
    mail = user.email
    data_akuns = User.objects.get(id=pk)
    if request.method == 'POST':
        form = AkunForm(request.POST, instance=data_akuns)
        
        if form.is_valid():
            password = form.cleaned_data.get('new_password')
            if password is None:
                password = user.password
            else:
                password = password
            data_akuns.password = make_password(password)
            form.save()
            return redirect('akun')
    else:
        form = AkunForm(instance=data_akuns)
    context = {
        'rows': data_akuns,
        'mail': mail,
        'form': form,
    }
    return render(request, 'biodata.html', context)


@login_required
def Delete_Akun(request, pk):
    data_akuns = User.objects.get(id=pk)
    data_akuns.delete()
    return redirect('akun')

#list Pengumuman
def Pengumuman_list(request):
    Data_siswa = Pengumuman.objects.order_by("-tanggal")
    context = {
        'rows': Data_siswa,
    }
    return render(request, 'pengumuman.html', context)

#list Pengumuman
def Depan(request):
    Data_siswa = Pengumuman.objects.order_by("-tanggal")[1:6]
    pengumuman_last = Pengumuman.objects.latest('tanggal')
    context = {
        'rows': Data_siswa,
        'rows1': pengumuman_last,
    }
    return render(request, 'index.html', context)

#list Pengumuman
@login_required
def Pengumuman_Admin(request):
    Data_siswa = Pengumuman.objects.order_by("-tanggal")
    context = {
        'rows': Data_siswa,
    }
    return render(request, 'pengumuman_admin.html', context)

#detail Pengumuman
def Pengumuman_detail(request, pk):
    data_pengumumans = Pengumuman.objects.get(id=pk)
    context = {
        'rows': data_pengumumans,
    }
    return render(request, 'detail_pengumuman.html', context)


def Create_Pengumuman(request):
    user = request.user
    mail = user.email
    if request.method == 'POST':
        form = PengumumanForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('pengumuman_admin')
    else:
        form = PengumumanForm()
    context = {
        'form': form,
        'mail': mail,
    }
    return render(request, 'form_pengumuman.html', context)


@login_required
def Update_Pengumuman(request, pk):
    user = request.user
    mail = user.email
    data_pengumumans = Pengumuman.objects.get(id=pk)
    if request.method == 'POST':
        form = PengumumanForm(
            request.POST, instance=data_pengumumans)
        if form.is_valid() :
            form.save()
            return redirect('pengumuman_admin')
    else:
        form = PengumumanForm(instance=data_pengumumans)
    context = {
        'form': form,
        'mail': mail,
        'rows': data_pengumumans
    }
    return render(request, 'form_pengumuman.html', context)


@login_required
def Delete_Pengumuman(request, pk):
    data_pengumumans = Pengumuman.objects.get(id=pk)
    data_pengumumans.delete()
    return redirect('pengumuman_admin')

#data siswa
@login_required
def Biodata(request):
    user = request.user
    mail = user.email
    data_users = User.objects.get(id=user.id)
    data_students = Student.objects.get(user_id=user.id)
    if request.method == 'POST':
        form1 = UserForm(
            request.POST, request.FILES, instance=data_users)
        form = StudentForm(
            request.POST, request.FILES, instance=data_students)
        form2 = ParentForm(
            request.POST, request.FILES, instance=data_students)
        form3 = FileForm(
            request.POST, request.FILES, instance=data_students)
        if form.is_valid() and form1.is_valid() and form2.is_valid() and form3.is_valid():
            
            data_students.status_pendaftaran = 2
            data_students.save()
            form.save()
            form1.save()
            form2.save()
            form3.save()
            return redirect('biodata')
    else:
        form1 = UserForm(instance=data_users)
        form = StudentForm(instance=data_students)
        form2 = ParentForm(instance=data_students)
        form3 = FileForm(instance=data_students)
    context = {
        'form': form,
        'form1': form1,
        'form2': form2,
        'form3': form3,
        'mail': mail,
    }
    return render(request, 'biodata.html', context)


@login_required
def menu_kartu(request):
    user = request.user
    mail = user.email
    data_users = User.objects.get(id=user.id)
    data_students = Student.objects.get(user_id=user.id)
    context = {
        'data_students': data_students,
        'data_users': data_users,
    }
    return render(request, 'menu_kartu.html', context)


@login_required
def Hasil_seleksi(request):
    user = request.user
    mail = user.email
    data_users = User.objects.get(id=user.id)
    data_students = Student.objects.get(user_id=user.id)
    context = {
        'data_students': data_students,
        'data_users': data_users,
    }
    return render(request, 'hasil_seleksi.html', context)


@login_required
def admin_kartu(request,pk):
    user = request.user
    mail = user.email
    data_users = User.objects.get(id=pk)
    data_students = Student.objects.get(user_id=pk)
    context = {
        'data_students': data_students,
        'data_users': data_users,
    }
    return render(request, 'kartu.html', context)

@login_required
def kartu(request):
    user = request.user
    mail = user.email
    data_users = User.objects.get(id=user.id)
    data_students = Student.objects.get(user_id=user.id)
    context = {
        'data_students': data_students,
        'data_users': data_users,
        'mail': mail,
    }
    return render(request, 'kartu.html', context)

@login_required
def laporan(request):
    user = request.user
    mail = user.email
    data_users = User.objects.all().filter(user_type=1)
    data_tombol = tombol.objects.get(id=1)
    #data_students = Student.objects.all()
    context = {
        #'data_students': data_students,
        'data_users': data_users,
        'data_tombol': data_tombol,
    }
    return render(request, 'laporan.html', context)


def laporan_front(request):
    data_users = User.objects.all().filter(user_type=1)
    data_tombol = tombol.objects.get(id=1)
    #data_students = Student.objects.all()
    context = {
        #'data_students': data_students,
        'data_users': data_users,
        'data_tombol': data_tombol,
    }
    return render(request, 'laporan_front.html', context)

@login_required
def print_laporan(request):
    user = request.user
    mail = user.email
    data_users = User.objects.all().filter(user_type=1)
    #data_students = Student.objects.all()
    context = {
        #'data_students': data_students,
        'data_users': data_users,
    }
    return render(request, 'print_laporan.html', context)

#update data akun
@login_required
def tombol_switch(request):
    user = request.user
    mail = user.email
    data_tombol = tombol.objects.get(id=1)
    if data_tombol.is_tombol == False:
        data_tombol.is_tombol=True
        data_tombol.save()
    elif data_tombol.is_tombol == True:
        data_tombol.is_tombol=False
        data_tombol.save()
    context = {
        
    }
    return redirect('laporan')