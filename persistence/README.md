## Persistence
Docker containers should treat their filesystems as ephemeral. On production docker hosts, if a container is stopped it is a near guarantee that it will also be removed along with its filesystem. As such, applications built to run in containers should be careful about treating the filesystem as a reliable data storage mechanism.

If you need data persistence in a container, consider alternatives:
* Does it need to persist forever? If it disappears because the container is killed, is it OK to re-create?
* Can I store it in memory?
* Can it be stored it in S3 or some other remote data storage mechanism?
* Does it belong in the database?
* Could I put it in Redis/memcached?

There are a few caveats to the filesystem being ephermeral, such as mounted directories which are coverd in the volumes directory of this repo.

## Run order
* docker_write_file.sh (writes a file in to our running echo_and_sleep container and shows that files written in to the container via 'docker exec' are persistent after the 'docker exec' command is finished)
* docker_stop_and_start.sh (when you stop and start a container, the file we wrote previously will still be there. this is because we haven't "removed" the container, just stopped it)
* docker_rm_and_run.sh (stops, and removes the container. then docker a `docker run` from the original echo_and_sleep image. it will then show that the file we wrote previously is there. this is because 'rm' deletes a container and its written contents.)
