web: gunicorn django_refresher.wsgi:application --log-file - --log-level debug
heroku ps:scale web=1
python manage.py collectstatic --noinput
release: python3 manage.py migrate