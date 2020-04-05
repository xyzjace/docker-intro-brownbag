#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker inspect <container_id>' to see info about a container, running or not\e[0m\n"
echo -e "\e[1m\e[34m$ docker inspect echo_and_sleep\e[0m\n"

# This block is here to make the inspect command work and can be ignored
set +e
docker stop echo_and_sleep > /dev/null 2>&1
docker rm echo_and_sleep > /dev/null 2>&1
docker run --name echo_and_sleep -d xyzjace/echo_and_sleep:latest > /dev/null 2>&1
set -e

docker inspect echo_and_sleep | less

