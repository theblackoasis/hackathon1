# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-30 19:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0018_auto_20170329_1757'),
    ]

    operations = [
        migrations.AddField(
            model_name='trainingcenter',
            name='password',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
    ]
