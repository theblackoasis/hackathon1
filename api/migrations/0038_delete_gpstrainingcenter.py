# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-01 12:24
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0037_gpstrainingcenter'),
    ]

    operations = [
        migrations.DeleteModel(
            name='GpsTrainingCenter',
        ),
    ]
