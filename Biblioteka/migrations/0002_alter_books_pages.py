# Generated by Django 3.2.9 on 2021-12-01 16:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Biblioteka', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='books',
            name='pages',
            field=models.IntegerField(),
        ),
    ]
