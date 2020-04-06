#!/bin/bash
set -e

echo -e "\033[1m\033[34mWriting a file called 'my_file' to / in echo_and_sleep container\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec echo_and_sleep touch /my_file\033[0m\n"
docker exec echo_and_sleep touch /my_file

sleep 2

echo -e "\033[1m\033[34mSeeing if the file exists in echo_and_sleep container\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec echo_and_sleep ls -la /my_file\033[0m\n"
docker exec echo_and_sleep ls -la /my_file
