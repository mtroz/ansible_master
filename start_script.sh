#!/usr/bin/env bash

docker network ls -f name=ansible_network --format="{{.Name}}"

if [ $? != 1 ]
then
    docker network rm $(docker network ls -f name=ansible_network --format="{{.Name}}")
fi

docker-compose up -d
sleep 2s
docker-compose exec master bash -c /tmp/initialize_host.sh
docker-compose exec master bash -c /tmp/initialize_ssh_key.sh

