# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-03-31 10:37
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0020_auto_20170331_1034'),
    ]

    operations = [
        migrations.RenameField(
            model_name='batchinfo',
            old_name='batch_assesment_date',
            new_name='batch_assessment_date',
        ),
    ]
