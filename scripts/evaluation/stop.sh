#!/usr/bin/env bash

docker-compose -f ../../docker/docker-compose.yml down

docker stop $(docker ps | awk ' /sagemaker/ { print $1 }')