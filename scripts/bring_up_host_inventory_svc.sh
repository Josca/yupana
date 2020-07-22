#!/bin/bash
set -x

cp -f scripts/config/.host_env ../insights-host-inventory/.env
cd ../insights-host-inventory/
. .env

#pipenv --python ~/anaconda3.6/bin/python install --dev
pipenv run python manage.py db upgrade
pipenv run python run_gunicorn.py
