#!/bin/sh
python manage.py collectstatic --no-input
service nginx start
gunicorn -b 0.0.0.0:8020 instaswap.wsgi:application --timeout 90
exec "$@"