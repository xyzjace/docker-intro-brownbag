#!/bin/bash
set -e

echo -e "\e[1m\e[34mStopping the container\e[0m\n"
echo -e "\e[1m\e[34m$ docker stop echo_and_sleep\e[0m\n"
docker stop echo_and_sleep

echo -e "\e[1m\e[34mStarting the container\e[0m\n"
echo -e "\e[1m\e[34m$ docker start echo_and_sleep\e[0m\n"
docker start echo_and_sleep

echo -e "\e[1m\e[34mSeeing if the file exists in echo_and_sleep container\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec echo_and_sleep ls -la /my_file\e[0m\n"
docker exec echo_and_sleep ls -la /my_file
