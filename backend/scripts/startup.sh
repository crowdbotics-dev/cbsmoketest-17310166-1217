#!/bin/bash

python manage.py collectstatic --no-input
python manage.py migrate --noinput

waitress-serve --port=$PORT cbsmoketest_17310166_1217.wsgi:application
