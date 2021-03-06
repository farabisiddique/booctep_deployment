# Generated by Django 3.1.5 on 2021-02-14 11:00

from django.conf import settings
import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
        ('teacher', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('email', models.EmailField(max_length=254, unique=True, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, verbose_name='staf status')),
                ('is_active', models.BooleanField(default=True, verbose_name='active')),
                ('is_superuser', models.BooleanField(default=False, verbose_name='superuser status')),
                ('is_confirmed', models.BooleanField(default=False, verbose_name='Is confirmed')),
                ('date_joined', models.DateTimeField(blank=True, null=True)),
                ('first_name', models.CharField(blank=True, max_length=200, null=True)),
                ('last_name', models.CharField(blank=True, max_length=200, null=True)),
                ('phone_number', models.CharField(blank=True, max_length=200, null=True)),
                ('image', models.TextField(blank=True, null=True)),
                ('group', models.ForeignKey(default=3, on_delete=django.db.models.deletion.DO_NOTHING, to='auth.group')),
            ],
            options={
                'verbose_name': 'User',
                'verbose_name_plural': 'Users',
            },
        ),
        migrations.CreateModel(
            name='user_become',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('user_id', models.IntegerField(null=True, validators=[django.core.validators.MaxValueValidator(11)])),
                ('cat_id', models.IntegerField(null=True, validators=[django.core.validators.MaxValueValidator(11)])),
                ('sub_catid', models.CharField(max_length=255, null=True)),
                ('permit', models.IntegerField(default=0, validators=[django.core.validators.MaxValueValidator(3)])),
            ],
        ),
        migrations.CreateModel(
            name='user_profile',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('user_id', models.IntegerField(blank=True, default=0, null=True)),
                ('bio', models.TextField(blank=True, null=True)),
                ('cat_id', models.IntegerField(blank=True, null=True)),
                ('subcat_ids', models.CharField(max_length=200)),
                ('facebook_url', models.CharField(max_length=200)),
                ('instagram_url', models.CharField(max_length=200)),
                ('twitter_url', models.CharField(max_length=200)),
                ('website_url', models.CharField(max_length=200)),
                ('notification', models.CharField(max_length=100)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='user_categories',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('category', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='teacher.subcategories')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='categories', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='user_activation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(max_length=70)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='notifications',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('user_id', models.IntegerField(null=True, validators=[django.core.validators.MaxValueValidator(11)])),
                ('title', models.TextField(max_length=255)),
                ('text', models.TextField(max_length=1000)),
                ('is_read', models.IntegerField(default=0, null=True, validators=[django.core.validators.MaxValueValidator(3)])),
                ('sender', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]
