#!/bin/bash
set -e

echo -e "\e[1m\e[34mUse 'docker exec -it <container_id> some_command' to execute a command on a running container and attach a terminal\e[0m\n"
echo -e "\e[1m\e[34m$ docker exec -it echo_and_sleep /bin/sh\e[0m\n"
docker exec -it echo_and_sleep /bin/sh

