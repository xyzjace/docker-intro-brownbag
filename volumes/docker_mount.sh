#!/bin/bash
set -e

## This block is here to make this script work if run multiple times and can be ignored
set +e
docker stop mount > /dev/null 2>&1
docker rm mount > /dev/null 2>&1
set -e
##


echo -e "\e[1m\e[34mUse the \"-v from:to\" flag to mount volumes in to a container\e[0m\n"
echo -e "\e[1m\e[34m$ docker run --rm --name mount -d -v ${PWD}:/mnt/mounted_directory_from_host xyzjace/mount\e[0m\n"
docker run --rm --name mount -d -v ${PWD}:/mnt/mounted_directory_from_host xyzjace/mount

sleep 5

echo -e "\e[1m\e[34mLook at the contents of the mounted directory\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec mount ls /mnt/mounted_directory_from_host\e[0m\n"
docker exec mount ls /mnt/mounted_directory_from_host
