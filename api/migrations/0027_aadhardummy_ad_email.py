# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-01 06:03
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0026_auto_20170401_0553'),
    ]

    operations = [
        migrations.AddField(
            model_name='aadhardummy',
            name='ad_email',
            field=models.CharField(default='', max_length=255, unique=True),
            preserve_default=False,
        ),
    ]
