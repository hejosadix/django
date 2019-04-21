# django
# test Proyect
# ubuntu setup 
# install pip this pip is for python 2
sudo apt install python-pip
# install globaly the virtual env
sudo -H pip install virtualenv
# install this depency if it need it
sudo apt-get install python3-distutils
virtualenv test -p python3
# this activate the virtual env
source ~/test/bin/activate
# (test) inside the virtual env
pip install django


#install postgres in ubuntu
sudo apt-get update
sudo apt-get install python3-pip python3-dev libpq-dev postgresql postgresql-contrib
#logging to postgres
sudo -u postgres psql
CREATE DATABASE django;
CREATE USER django_user WITH PASSWORD '123456';
ALTER ROLE django_user SET client_encoding TO 'utf8';
ALTER ROLE django_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE django_user SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE django TO django_user;

#to create tables 
python manage.py makemigrations
python manage.py migrate
# to create a super admin user
python manage.py createsuperuser
#run the app (inside the folder)
pyton manage.py runserver
