# django
# test Project
# ubuntu setup 
# install pip this pip is for python 2
sudo apt install python-pip
# install globaly the virtual env
sudo -H pip install virtualenv
# install this depency if it need it
sudo apt-get install python3-distutils <br/>
virtualenv test -p python3
# this activate the virtual env
source ~/test/bin/activate
# (test) inside the virtual env
pip install django
# install postgres in ubuntu
sudo apt-get update <br/>
sudo apt-get install python3-pip python3-dev libpq-dev postgresql postgresql-contrib
# logging to postgres
sudo -u postgres psql <br/>
CREATE DATABASE django; <br/>
CREATE USER django_user WITH PASSWORD '123456'; <br/>
ALTER ROLE django_user SET client_encoding TO 'utf8'; <br/>
ALTER ROLE django_user SET default_transaction_isolation TO 'read committed';<br/>
ALTER ROLE django_user SET timezone TO 'UTC'; <br/>
GRANT ALL PRIVILEGES ON DATABASE django TO django_user;
# (test) install postgres in python
pip install psycopg2
# to create tables 
python manage.py makemigrations <br/>
python manage.py migrate
# to create a super admin user
python manage.py createsuperuser
# run the app (inside the folder)
python manage.py runserver
# api url by normal runserver
http://127.0.0.1:8000/api/api-json-products

# Export database
You can create like this put is preferable by command (python manage.py migrate) the migration files are inside the project.
pg_dump -h localhost -U django_user -W -F t django > export.pgsql
# Import database
psql -h localhost -U django_user -W -F t django < export.pgsql <br/>
python manage.py migrate --fake<br >
python manage.py createsuperuser

