#!/bin/bash
set -e

echo -e "\033[1m\033[34mWrite something to the mounted directory say_hello.sh file\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec -w /mnt/mounted_directory_from_host mount echo 'echo Written from the container' >> say_hello.sh\033[0m\n"
docker exec -w /mnt/mounted_directory_from_host mount echo 'echo Written from the container' >> say_hello.sh

echo -e "\033[1m\033[34mLook at the contents of say_hello.sh locally\033[0m\n"
cat say_hello.sh
