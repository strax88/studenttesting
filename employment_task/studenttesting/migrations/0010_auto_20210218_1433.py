# Generated by Django 3.1.6 on 2021-02-18 07:33

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('studenttesting', '0009_auto_20210218_1432'),
    ]

    operations = [
        migrations.AlterField(
            model_name='result',
            name='completion_date',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата прохождения'),
        ),
    ]
