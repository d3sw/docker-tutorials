
### Pre-flight Check
List currently running containers:

```
docker ps
```

List locally available images:

```
docker images
```

### Run
Run an nginx container:

```
docker run --name example1 -d -p 9898:80 nginx
```
- --name give the container a unique name of `example1`
- -d run nginx as a daemon
- -p map the container port `80` to the host port `9898`

If you navigate to [http://localhost:9898](http://localhost:9898), you should be
able to see the default nginx page.

### Inspect
List currently running containers:

```
docker ps
```

Inspect container to get details and properties:

```
docker inspect example1
```

Get container logs i.e. your application logs:

```
docker logs example1
```


Exec into the container using the provided command.  In this case we will launch
a bash shell.

```
docker exec -it example1 /bin/bash
```

Once in the container, list the running processes, look around and exit:

```
$ ps auwx
$ ....
$ exit
```

Stop and remove the container:

```
docker rm -f example1
```

### Modify

Build a custom image with our `Dockerfile` to be run as a  contianer:

```
docker build -t myimage .
```

Our new image by the name of `myimage` now contains a custom page for nginx.  We
can now use the `run` command to launch our newly built image:

```
docker run --name example2 -d -p 9898:80 myimage
```
