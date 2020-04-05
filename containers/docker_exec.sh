#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker exec' to execute a command on a running container\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec echo_and_sleep pwd\e[0m\n"
docker exec echo_and_sleep pwd

