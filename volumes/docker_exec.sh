#!/bin/bash
set -e
echo -e "\033[1m\033[34mUse exec to execute the mounted file\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec mount /mnt/mounted_directory_from_host/say_hello.sh\033[0m\n"
docker exec mount /mnt/mounted_directory_from_host/say_hello.sh
