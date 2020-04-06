#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker logs <container_id>' to see the logs of a container\033[0m\n"
echo -e "\033[1m\033[34m$ docker logs echo_and_sleep\033[0m\n"
docker logs echo_and_sleep

