#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse 'docker exec -it <container_id> some_command' to execute a command on a running container and attach a terminal\033[0m\n"
echo -e "\033[1m\033[34m$ docker exec -it echo_and_sleep /bin/sh\033[0m\n"
docker exec -it echo_and_sleep /bin/sh

