# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-04-02 08:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0044_auto_20170402_0247'),
    ]

    operations = [
        migrations.CreateModel(
            name='CertifiedTraineeList',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('certified', models.BooleanField(default=False)),
                ('c_app_user_email', models.CharField(blank=True, default='', max_length=255)),
                ('district', models.CharField(blank=True, max_length=25)),
                ('job_role', models.CharField(blank=True, max_length=100)),
            ],
        ),
    ]