#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker run [registry/][repository/]<image_name>[:tag]' to run an image\033[0m\n"
echo -e "\033[1m\033[34m$ docker run xyzjace/hello_world:latest\033[0m\n"
docker run xyzjace/hello_world:latest
