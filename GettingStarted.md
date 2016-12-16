
### Prep

```
docker images
docker ps
```

### Run

```
docker run --name example1 -d -p 9898:80 nginx
```
- -d run as daemon
- -p map container port 80 to host port 9898

### Inspect
```
docker ps
docker inspect example1
docker exec -it example1 /bin/bash

    ps auwx

```

### Modify

```
docker build -t example2 .
```
