# Generated by Django 3.1.2 on 2021-01-23 09:57

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0027_auto_20210123_0954'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order',
            name='is_rated',
        ),
    ]
