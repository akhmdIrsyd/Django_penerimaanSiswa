from django.conf.urls import url, include
from django.contrib import admin
from django.urls import path
from . import views

from django.conf.urls.static import static
from django.conf import settings

urlpatterns = [
    path('', views.Depan, name='Index'),
    path('DashBoard', views.index, name='DashBoard'),
    path('pendaftar/', views.pendaftar, name='Pendaftar'),
    path('pendaftar_update/<int:pk>/', views.Update_Pendaftar, name='pendaftar_update'),
    path('pendaftar_delete/<int:pk>/', views.Delete_Pendaftar, name='pendaftar_delete'),
    path('signup/', views.signup, name='signup'),
    path('signupaccount/', views.signup_panitia, name='signupaccount'),
    path('setting/', views.Ganti_password, name='setting'),
    path('password/', views.Ganti_passwordSiswa, name='password'),
    path('login/', views.Login, name='login'),
    path('logout/', views.Logout, name='logout'),
    path('akun/', views.Akun, name='akun'), 
    path('akun_update/<int:pk>/', views.Update_Akun, name='akun_update'),
    path('akun_delete/<int:pk>/', views.Delete_Akun, name='akun_delete'),
    path('biodata/', views.Biodata, name='biodata'), 
    path('pengumuman/', views.Pengumuman_list, name='pengumuman'),
    path('pengumuman_admin/', views.Pengumuman_Admin, name='pengumuman_admin'),
    path('pengumuman_create/', views.Create_Pengumuman, name='pengumuman_create'),
    path('pengumuman_detail/<int:pk>/', views.Pengumuman_detail, name='pengumuman_detail'),
    path('pengumuman_update/<int:pk>/', views.Update_Pengumuman, name='pengumuman_update'),
    path('pengumuman_delete/<int:pk>/', views.Delete_Pengumuman, name='pengumuman_delete'),
    path('kartu/', views.menu_kartu, name='kartu'),
    path('print_kartu/', views.kartu, name='print_kartu'),
    path('pendaftar/print_kartuAdmin/<int:pk>/', views.admin_kartu, name='print_kartuAdmin'),
    path('hasil_seleksi/', views.Hasil_seleksi, name='hasil_seleksi'),
    path('laporan/', views.laporan, name='laporan'),
    path('announcement/', views.laporan_front, name='announcement'),
    path('laporan/print_laporan/', views.print_laporan, name='printlaporan'),
    path('tombol/', views.tombol_switch, name='tombol'),
    path('gambar/', views.list_gambar, name='gambar'),
    path('gambar_update/<int:pk>/', views.Update_gambar, name='gambar_update'),
    path('alur/', views.list_alur, name='alur'),
    path('alur_update/<int:pk>/', views.Update_alur, name='alur_update'),
    path('visimisi/', views.list_visimisi, name='visimisi'),
    path('alur_visimisi/<int:pk>/', views.Update_visimisi, name='visimisi_update'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
