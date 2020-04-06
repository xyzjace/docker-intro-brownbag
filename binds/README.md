## Docker port binding
Using the -p flag when using the command `docker run` allows you to expose container ports to the host.

You can expose tcp or udp, or both (default).

Using the -P flag binds exposed ports randomly on the host, e.g:
- If a container exposes port 3000, using the -P flag will expose port 3000 as a random port on the host (32768, for example).

Normal rules of port bindings apply. You cannot bind a port multiple times, which is why this flag is so useful especially if you're running multiple containers all listening on the same port on the same host.


## Run order
* docker_bind.sh (see that the container port is exposed to the host)
* docker_rebind.sh (we can make the host listen on a different port than the container)
* docker_random_bind.sh (container ports can be randomly bound on the host if we don't know them ahead of time, or don't want them hardcoded)
