#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker pull [registry/][repository/]<image_name>[:tag]' to download a docker image from a registry\033[0m\n"
echo -e "\033[1m\033[34m$ docker pull xyzjace/hello_world \033[0m\n"

docker pull xyzjace/hello_world

