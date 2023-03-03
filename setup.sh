sudo -n dnf install -y pipenv

cd /vagrant

pipenv sync --dev

pipenv run python manage.py migrate
nohup pipenv run python manage.py runserver 0.0.0.0:8000 &
