# Generated by Django 3.1.6 on 2021-02-18 07:40

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('studenttesting', '0010_auto_20210218_1433'),
    ]

    operations = [
        migrations.RenameField(
            model_name='result',
            old_name='student',
            new_name='user',
        ),
    ]
