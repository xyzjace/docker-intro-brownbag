#!/bin/bash
set -e
echo -e "\e[1m\e[34mUse exec to execute the mounted file\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec mount /mnt/mounted_directory_from_host/say_hello.sh\e[0m\n"
docker exec mount /mnt/mounted_directory_from_host/say_hello.sh
