## Building

To build the image, run the following command. This also tags it using the name "myapp", which makes it more convinient for us to run it.

```sh
docker build -t myapp .
```

## Running

Now that our container has been build, we are able to run it. The following command uses the `-p` flag to indicate that we want to bind a port from the container to our machine. In this case, the app is running on port 80 inside the container, but we want it to be on port 8080 on our machine. The `-d` flag indicates that we want to run it detached, in the background.

```sh
docker run -p 8080:80 -d myapp
```

## Killing

To stop the container from running, use `docker ps` to find all instances of running docker containers, find the one you want to kill and copy its "CONTAINER ID". Use the id in the command `docker kill <id>` to kill it.