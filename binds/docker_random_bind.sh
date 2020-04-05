#!/bin/bash
set -e

## This block is here to make this script work if run multiple times and can be ignored
set +e
docker stop echo_server > /dev/null 2>&1
docker rm echo_server > /dev/null 2>&1
set -e
##

echo -e "\e[1m\e[34mUse the \"-P\" flag on docker run to bind any exposed ports in the Dockerfile to a random ephemeral port on the host\e[0m\n"
echo -e "\e[1m\e[34m$ docker run -d --name echo_server -P xyzjace/echo_server\e[0m\n"
docker run -d --name echo_server -P xyzjace/echo_server
