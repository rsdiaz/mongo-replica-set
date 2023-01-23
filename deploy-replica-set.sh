#!/bin/bash

docker-compose up -d

sleep 5

docker exec mongo-server-primary /scripts/config-replica-set.sh