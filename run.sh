#!/bin/sh -e

docker-compose up -d mipmap_db i2b2_db

docker-compose up wait_dbs
docker-compose up i2b2_setup
docker-compose up mipmap_etl
