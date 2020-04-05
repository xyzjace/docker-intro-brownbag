#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker logs <container_id>' to see the logs of a container\e[0m\n"
echo -e "\e[1m\e[34m$ docker logs echo_and_sleep\e[0m\n"
docker logs echo_and_sleep

