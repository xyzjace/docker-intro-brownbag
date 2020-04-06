#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse the docker run command to run a container\033[0m\n"
echo -e "\033[1m\033[34m$ docker run --rm --name dockerfile-add-file -d dockerfile:add_file\033[0m\n"
docker run --rm --name dockerfile-add-file -d dockerfile:add_file
