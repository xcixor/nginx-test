#!/bin/sh
python manage.py collectstatic --no-input
gunicorn instaswap.wsgi:application --bind 0.0.0.0:8000
exec "$@"