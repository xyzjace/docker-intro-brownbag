#!/bin/bash
set -e

echo -e "\033[1m\033[34mUse the docker run command to start the image as a shell instead\033[0m\n"
echo -e "\033[1m\033[34m$ docker run -it dockerfile:intro /bin/sh\033[0m\n"
docker run -it dockerfile:intro /bin/sh
