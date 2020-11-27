

# Create your models here.
from django.core.exceptions import ValidationError
from django.contrib.auth.models import User, AbstractUser, BaseUserManager
from django.conf import settings
from django.dispatch import receiver
from django.db.models.signals import post_save, post_delete, pre_save


from django.contrib.auth.models import AbstractUser

from django.utils.translation import ugettext_lazy as _
from django.db import models
from django.core.validators import FileExtensionValidator



class CustomUserManager(BaseUserManager):
    """
    Custom user model manager where email is the unique identifiers
    for authentication instead of usernames.
    """

    def create_user(self, email, password, **extra_fields):
        """
        Create and save a User with the given email and password.
        """
        if not email:
            raise ValueError(_('The Email must be set'))
        email = self.normalize_email(email)
        user = self.model(email=email, **extra_fields)
        user.set_password(password)
        user.save()
        return user

    def create_superuser(self, email, password, **extra_fields):
        """
        Create and save a SuperUser with the given email and password.
        """
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)
        extra_fields.setdefault('is_active', True)

        if extra_fields.get('is_staff') is not True:
            raise ValueError(_('Superuser must have is_staff=True.'))
        if extra_fields.get('is_superuser') is not True:
            raise ValueError(_('Superuser must have is_superuser=True.'))
        return self.create_user(email, password, **extra_fields)

class User(AbstractUser):
    USER_TYPE_CHOICES = (
        (1, 'student'),
        (2, 'comitte'),
        (3, 'admin'),
    )
    user_type=models.PositiveIntegerField(choices=USER_TYPE_CHOICES, default=1)
    username = None
    email = models.EmailField(_('email address'), unique=True)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    
    is_student = models.BooleanField(default=False)
    is_teacher = models.BooleanField(default=False)

    objects = CustomUserManager()

    def __str__(self):
        return self.email


#def user_directory_path(instance, filename):
#    # file will be uploaded to MEDIA_ROOT/user_<id>/<filename>
#    return 'user_{0}/{1}'.format(instance.user.id, filename)


def _upload_path(instance, filename):
    return instance.get_upload_path(filename)

def file_size(value):  # add this to some file where you can import it from
    limit = 2 * 1024 * 1024
    if value.size > limit:
        raise ValidationError('File too large. Size should not exceed 2 MB.')

class Student(models.Model):
    pendaftaran_choices = (
        (1, 'Belum'),
        (2, 'Selesai'),
    )
    verifikasi_choices = (
        (1, 'Belum'),
        (2, 'Sudah'),
    )
    seleksi_choices = (
        (1, 'Belum'),
        (2, 'Tidak Lulus'),
        (3, 'Lulus'),
    )
    penghasilan_choices = (
        (1, '< Rp.2.000.000'),
        (2, 'Rp.2.000.000 - Rp.5.000.000'),
        (3, 'Rp.5.000.000 - Rp.10.000.000'),
        (4, '> Rp.10.000.000'),
    )
    
    nisn = models.CharField(max_length=50, unique=True, verbose_name='NISN')
    user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
    nama = models.CharField(max_length=50)
    alamat = models.TextField()
    sekolah = models.CharField(max_length=100)
    nama_ayah = models.CharField(max_length=50, blank=True, null=True)
    nama_ibu = models.CharField(max_length=50, blank=True, null=True)
    alamat_orang_tua = models.TextField(blank=True, null=True)
    Penghasilan_ayah = models.PositiveIntegerField(choices=penghasilan_choices, default=1)
    Penghasilan_ibu= models.PositiveIntegerField(choices=penghasilan_choices, default=1)
    foto = models.FileField(upload_to=_upload_path, null=True,validators=[FileExtensionValidator(['jpg']), file_size])
    ijazah = models.FileField(upload_to=_upload_path, null=True, validators=[FileExtensionValidator(['pdf']), file_size])
    SKHUN = models.FileField(upload_to=_upload_path, null=True,validators=[FileExtensionValidator(['pdf']), file_size])
    status_pendaftaran = models.PositiveIntegerField(choices=pendaftaran_choices, default=1)
    status_verifikasi = models.PositiveIntegerField(choices=verifikasi_choices, default=1)
    status_seleksi = models.PositiveIntegerField(choices=seleksi_choices, default=1)
    nilai_skhu=models.FloatField(default=0.0)
    #Foto=models.ImageField(_(""), upload_to=None, height_field=None, width_field=None, max_length=None)

    def get_upload_path(self, filename):
        return "static/uploads/"+str(self.user.id)+"/"+filename
    
    
class Pengumuman(models.Model):
    judul = models.CharField(max_length=50, verbose_name='Judul')
    isi = models.TextField(verbose_name='Isi')
    tanggal = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return str(self.id)

class tombol(models.Model):
    is_tombol = models.BooleanField(default=False)

    def __str__(self):
        return str(self.id)

        

