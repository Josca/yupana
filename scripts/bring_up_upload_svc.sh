#!/bin/bash
set -x

upload_dir_path='../insights-ingress-go'
cp -f scripts/config/.upload_env $upload_dir_path/.env
cd $upload_dir_path
. .env

docker-compose up --build
