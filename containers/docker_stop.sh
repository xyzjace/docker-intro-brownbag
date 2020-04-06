#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker stop <container_id>' to stop a running container\033[0m\n"
echo -e "\033[1m\033[34m$ docker stop echo_and_sleep\033[0m\n"
docker stop echo_and_sleep

