#!/usr/bin/env bash

docker rm -f $(docker ps -qa)
docker image rm $(docker image ls -f "reference=environnement*" --format="{{.Repository}}")
