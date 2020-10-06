
1. how to search a docker image in hub.docker.com
```
docker search jenkins
```
2. Download a docker image from hub.docker.com
```
docker image pull <image_name>:<image_version/tag>
```

3. List out docker images from your local system
```
docker image ls
```

4. Create/run/start a docker container from image
```
docker run -d --name=<container_Name> <image_name>:<image_version/tag>

d - run your container in back ground (detached)
```

5. Expose your application to host server
```
docker run -d  -p <host_port>:<container_port> --name=<container_Name> <image_name>:<Image_version/tag>

docker run -d --name=jenkins_server -p 8080:80 jenkins:2.2
```

6. List out running containers
```
docker ps
```

7. List out all docker container (running, stpooed, terminated, etc...)
```
docker ps -a
```

8. run a OS based container which interactive mode (nothing but login to container after it is up and running)

```
docker run -i -t --name=Jenkins_server jenkins:latest
i - interactive
t - Terminal
```

9. Stop a container 
```
docker stop <container_id>
```

10. Start a container which is in stopped or exit state

```
docker start <container_id>
```
11. start comtainer and remove when exit container

```
docker run --rm -i -t -d --name=jenkins_server -p <hostport>:<containerport> jenkins:latest
```
12. change host name

```
docker run -itd --name=Jenkins_server --hostname=Jenkins_Master -p <hostport>:<containerport> jenkins:latest
```
1. Remove a container

```sh
docker rm <container_id>
```

1. login to a docker container
```sh
docker exec -it <container_Name> /bin/bash
```
