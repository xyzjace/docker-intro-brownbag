#!/bin/bash
set -e

echo -e "\033[1m\033[34mStopping the container\033[0m\n"
echo -e "\033[1m\033[34m$ docker stop echo_and_sleep\033[0m\n"
docker stop echo_and_sleep

echo -e "\033[1m\033[34mStarting the container\033[0m\n"
echo -e "\033[1m\033[34m$ docker start echo_and_sleep\033[0m\n"
docker start echo_and_sleep

echo -e "\033[1m\033[34mSeeing if the file exists in echo_and_sleep container\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec echo_and_sleep ls -la /my_file\033[0m\n"
docker exec echo_and_sleep ls -la /my_file
