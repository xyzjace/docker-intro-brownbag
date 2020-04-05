#!/bin/bash
set -e

echo -e "\e[1m\e[34mStopping the container\e[0m\n"
echo -e "\e[1m\e[34m$ docker stop echo_and_sleep\e[0m\n"
docker stop echo_and_sleep

echo -e "\e[1m\e[34mRemoving the container\e[0m\n"
echo -e "\e[1m\e[34m$ docker rm echo_and_sleep\e[0m\n"
docker rm echo_and_sleep

sleep 3

echo -e "\e[1m\e[34mRunning the container\e[0m\n"
echo -e "\e[1m\e[34m$ docker run --name echo_and_sleep -d xyzjace/echo_and_sleep:latest\e[0m\n"
docker run --name echo_and_sleep -d xyzjace/echo_and_sleep:latest

sleep 3

echo -e "\e[1m\e[34mSeeing if the file exists in echo_and_sleep container\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec echo_and_sleep ls -la /my_file\e[0m\n"
docker exec echo_and_sleep ls -la /my_file
