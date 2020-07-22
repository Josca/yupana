#!/bin/bash
set -x

./scripts/bring_up_upload_svc.sh  &

./scripts/countdown.sh 'Waiting for ingress services to startup' 60 'Services are ready!'
./scripts/bring_up_upload_consumer.sh &
./scripts/bring_up_test_hi_consumer.sh &
./scripts/bring_up_yupana.sh &

./scripts/countdown.sh 'Waiting for host inventory db to be ready.' 15 'Services are ready!'
./scripts/bring_up_host_inventory_svc.sh &
