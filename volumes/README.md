## Docker volumes
Using the -v flag when using the command `docker run` allows you to mount directories from the host (your machine) in to the container.

Any changes made to directories mounted in to the container from the outside will reflect on the inside. This also holds true in reverse<sup>+</sup>

These are called 'volumes'. Using the -v flag is the easiest form, but there are other ways of creating and mounting volumes.

<sup>+</sup> This isn't strictly true all the time. You can mount volumes in to containers as read only. This means changes inside the container will not reflect on the outside, but changes made on the outside will reflect on the inside.


## Run order
* docker_mount.sh (pulls and runs a new image called 'xyzjace/mount:latest' which expects a directory to be mounted in to it at /var/mounted_directory_from_host. mounts the current directory in to that path in the container then shows the contents of the directory inside the container. verify that the contents of that directory match the contents of the directory this file is in)
* docker_write_in_container.sh (makes a modification to the 'say_hello.sh' script in the container, which will reflect on the host as well. then shows the contents of the file on the host to verify that it worked)
* docker_exec.sh (runs the 'say_hello.sh' script in the container at /var/mounted_directory_from_host/say_hello.sh to show that the host and the container do indeed have the same file)
* docker_terminal.sh (uses the -w flag to drop a terminal right in to the mounted directory inside the container. here you can mess about with the files and see them reflect on the host as well)
