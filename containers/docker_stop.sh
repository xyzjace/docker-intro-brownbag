#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker stop <container_id>' to stop a running container\e[0m\n"
echo -e "\e[1m\e[34m$ docker stop echo_and_sleep\e[0m\n"
docker stop echo_and_sleep

