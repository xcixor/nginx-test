#!/bin/sh
python manage.py collectstatic --no-input
gunicorn -b 0.0.0.0:8020 instaswap.wsgi:application --timeout 150 --log-level debug
exec "$@"