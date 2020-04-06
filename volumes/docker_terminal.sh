#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse \"-w directory\" to set your directory to some dir\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec -w /mnt/mounted_directory_from_host/ -it mount /bin/sh\033[0m\n"
docker exec -w /mnt/mounted_directory_from_host/ -it mount /bin/sh
