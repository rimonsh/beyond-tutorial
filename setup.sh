sudo -n dnf install -y pipenv

cd /vagrant

pipenv sync --dev

(setsid pipenv run \ python manage.py runserver 0.0.0.0:8000 > runserver.log 2>&1 &)
