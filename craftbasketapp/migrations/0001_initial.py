# Generated by Django 4.0.1 on 2022-01-25 12:22

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='craft_arts',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Tutor_id', models.IntegerField(max_length=100)),
                ('Tutor_Name', models.TextField(max_length=100)),
                ('Course_Category', models.CharField(max_length=100)),
                ('Course_Name', models.CharField(max_length=100)),
                ('course_Durtaion', models.CharField(max_length=100)),
                ('course_Description', models.CharField(max_length=100)),
                ('Course_Fees', models.PositiveIntegerField(max_length=100)),
            ],
        ),
    ]
