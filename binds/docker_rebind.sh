#!/bin/bash
set -e

## This block is here to make this script work if run multiple times and can be ignored
set +e
docker stop echo_server > /dev/null 2>&1
docker rm echo_server > /dev/null 2>&1
set -e
##

echo -e "\033[1m\033[34mUse the \"-p host_port:container_port\" flag on docker run to bind to a different port than the container\033[0m\n"
echo -e "\033[1m\033[34m$ docker run -d --name echo_server -p 8081:8080 xyzjace/echo_server\033[0m\n"
docker run -d --name echo_server -p 8081:8080 xyzjace/echo_server

sleep 2

echo -e "\033[1m\033[34mCURLing the host port of 8081 instead, even though the container is listening on 8080\033[0m\n"
echo -e "\033[1m\033[34m$ curl localhost:8081\033[0m\n"
curl localhost:8081
