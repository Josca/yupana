#!/bin/bash
set - x

cd test

. .env
python consumer.py
