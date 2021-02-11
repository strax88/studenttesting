# Generated by Django 3.1.6 on 2021-02-08 09:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('studenttesting', '0005_auto_20210207_2019'),
    ]

    operations = [
        migrations.AddField(
            model_name='answer',
            name='question',
            field=models.ForeignKey(default=999, on_delete=django.db.models.deletion.CASCADE, to='studenttesting.question'),
        ),
        migrations.AlterField(
            model_name='answer',
            name='test',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='studenttesting.test'),
        ),
    ]
