#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse \"-w directory\" to set your directory to some dir\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec -w /mnt/mounted_directory_from_host/ -it mount /bin/sh\e[0m\n"
docker exec -w /mnt/mounted_directory_from_host/ -it mount /bin/sh
