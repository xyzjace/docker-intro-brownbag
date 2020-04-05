#!/bin/bash
set -e

echo -e "\e[1m\e[34mWrite something to the mounted directory say_hello.sh file\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec -w /mnt/mounted_directory_from_host mount echo 'echo Written from the container' >> say_hello.sh\e[0m\n"
docker exec -w /mnt/mounted_directory_from_host mount echo 'echo Written from the container' >> say_hello.sh

echo -e "\e[1m\e[34mLook at the contents of say_hello.sh locally\e[0m\n"
cat say_hello.sh
