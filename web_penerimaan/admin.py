from django.contrib import admin

# Register your models here.
from .models import User,Student, Pengumuman,tombol
from django.contrib.auth.admin import UserAdmin


# Register your models here.
admin.site.register(User)
admin.site.register(Student)
admin.site.register(Pengumuman)
admin.site.register(tombol)
class CustomUserAdmin(UserAdmin):
    model = User
    list_display = ('email', 'is_staff', 'is_active',)
    list_filter = ('email', 'is_staff', 'is_active',)
    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Permissions', {'fields': ('is_staff', 'is_active')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'password1', 'password2', 'is_staff', 'is_active')}
         ),
    )
    search_fields = ('email',)
    ordering = ('email',)
