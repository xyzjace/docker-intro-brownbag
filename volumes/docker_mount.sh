#!/bin/bash
set -e

## This block is here to make this script work if run multiple times and can be ignored
set +e
docker stop mount > /dev/null 2>&1
docker rm mount > /dev/null 2>&1
set -e
##


echo -e "\033[1m\033[34mUse the \"-v from:to\" flag to mount volumes in to a container\033[0m\n"
echo -e "\033[1m\033[34m$ docker run --rm --name mount -d -v ${PWD}:/mnt/mounted_directory_from_host xyzjace/mount\033[0m\n"
docker run --rm --name mount -d -v ${PWD}:/mnt/mounted_directory_from_host xyzjace/mount

sleep 5

echo -e "\033[1m\033[34mLook at the contents of the mounted directory\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec mount ls /mnt/mounted_directory_from_host\033[0m\n"
docker exec mount ls /mnt/mounted_directory_from_host
