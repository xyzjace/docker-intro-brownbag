#!/bin/bash
set -e

## This block is here to make this script work if run multiple times and can be ignored
set +e
docker stop echo_server > /dev/null 2>&1
docker rm echo_server > /dev/null 2>&1
set -e
##


echo -e "\033[1m\033[34mUse the \"-p host_port:container_port\" flag on docker run to bind on the host to the container\033[0m\n"
echo -e "\033[1m\033[34m$ docker run -d --name echo_server -p 8080:8080 xyzjace/echo_server\033[0m\n"
docker run -d --name echo_server -p 8080:8080 xyzjace/echo_server

sleep 3

echo -e "\033[1m\033[34mUse docker inspect to see what ports are bound\033[0m\n"
echo -e "\033[1m\033[34m$ docker ps | grep echo_server\033[0m\n"
docker ps | grep echo_server
