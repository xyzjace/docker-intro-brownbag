#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker start <stopped_container_id>' start a stopped container\033[0m\n"
echo -e "\033[1m\033[34m$ docker start echo_and_sleep\033[0m\n"
docker start echo_and_sleep

