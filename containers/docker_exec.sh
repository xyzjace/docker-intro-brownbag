#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker exec' to execute a command on a running container\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec echo_and_sleep pwd\033[0m\n"
docker exec echo_and_sleep pwd

