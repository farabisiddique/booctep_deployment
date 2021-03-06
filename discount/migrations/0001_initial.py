# Generated by Django 3.1.5 on 2021-02-21 14:07

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='discount',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=200)),
                ('promo_code', models.TextField(blank=True, null=True)),
                ('price_off_percentage', models.IntegerField(default=0)),
                ('valid_days', models.IntegerField(blank=True, null=True)),
                ('valid_categories', models.TextField(default='0')),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
