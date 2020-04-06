#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker inspect <image_id>' to see info about an image\033[0m\n"
echo -e "\033[1m\033[34m$ docker inspect xyzjace/hello_world\033[0m\n"

sleep 3

jq_exists=$(command -v jq)
if [[ $? == 0 ]];
then
  docker inspect xyzjace/hello_world | jq . | less
else
  docker inspect xyzjace/hello_world | less
fi

