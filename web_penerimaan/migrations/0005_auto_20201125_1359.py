# Generated by Django 3.1.3 on 2020-11-25 06:59

import django.core.validators
from django.db import migrations, models
import web_penerimaan.models


class Migration(migrations.Migration):

    dependencies = [
        ('web_penerimaan', '0004_auto_20200924_0926'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='SKHUN',
            field=models.FileField(null=True, upload_to=web_penerimaan.models._upload_path, validators=[django.core.validators.FileExtensionValidator(['pdf']), web_penerimaan.models.file_size]),
        ),
        migrations.AlterField(
            model_name='student',
            name='foto',
            field=models.FileField(null=True, upload_to=web_penerimaan.models._upload_path, validators=[django.core.validators.FileExtensionValidator(['jpg']), web_penerimaan.models.file_size]),
        ),
        migrations.AlterField(
            model_name='student',
            name='ijazah',
            field=models.FileField(null=True, upload_to=web_penerimaan.models._upload_path, validators=[django.core.validators.FileExtensionValidator(['pdf']), web_penerimaan.models.file_size]),
        ),
        migrations.AlterField(
            model_name='user',
            name='first_name',
            field=models.CharField(blank=True, max_length=150, verbose_name='first name'),
        ),
    ]
