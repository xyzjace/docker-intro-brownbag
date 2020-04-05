#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker start <stopped_container_id>' start a stopped container\e[0m\n"
echo -e "\e[1m\e[34m$ docker start echo_and_sleep\e[0m\n"
docker start echo_and_sleep

