# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-01 08:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0029_auto_20170401_0805'),
    ]

    operations = [
        migrations.AlterField(
            model_name='candidateregistration',
            name='c_pincode',
            field=models.IntegerField(blank=True, default=0),
        ),
    ]