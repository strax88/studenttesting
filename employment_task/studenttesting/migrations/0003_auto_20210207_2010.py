# Generated by Django 3.1.6 on 2021-02-07 13:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('studenttesting', '0002_auto_20210207_1842'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student',
            name='email',
            field=models.CharField(max_length=30, unique=True),
        ),
    ]
