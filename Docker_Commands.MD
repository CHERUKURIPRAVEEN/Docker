
## Docker Images
How to search a docker image in hub.docker.com
```
docker search jenkins
```
Download a docker image from hub.docker.com
```
docker image pull <image_name>:<image_version/tag>
```
List out docker images from your local system
```
docker image ls
```
List out only docker images id from your local system
```
docker images -q
```
Delete docker images
```
docker rmi <image id>
```
Delete docker all images in single command
```
docker rmi ${docker images -q}
```
## Docker Dangling Images
List the Dangling Images
```
docker images -f dangling=true
```
Remove the Dangling Images
```
docker rmi -f ${docker images -f dangling=true -q}
```
## Docker Contaniers
Create/run/start a docker container from image
```
docker run -d --name=<container_Name> <image_name>:<image_version/tag>

d - run your container in back ground (detached)
```
Expose your application to host server
```
docker run -d  -p <host_port>:<container_port> --name=<container_Name> <image_name>:<Image_version/tag>

docker run -d --name=jenkins_server -p 8080:80 jenkins:2.2
```
List out running containers
```
docker ps
```
List out all docker container (running, stpooed, terminated, etc...)
```
docker ps -a
```
Run a OS based container which interactive mode (nothing but login to container after it is up and running)

```
docker run -i -t --name=Jenkins_server jenkins:latest
i - interactive
t - Terminal
```
Stop a container 
```
docker stop <container_id>
```
Start a container which is in stopped or exit state

```
docker start <container_id>
```
Start comtainer and remove when exit container
```
docker run --rm -i -t -d --name=jenkins_server -p <hostport>:<containerport> jenkins:latest
```
Change host name
```
docker run -itd --name=Jenkins_server --hostname=Jenkins_Master -p <hostport>:<containerport> jenkins:latest
```
Remove a container
```
docker rm <container_id>

for removing all containers
docker rm $(docker ps -aq)
```
Login to a docker container
```
docker exec -it <container_Name> /bin/bash
```
## Docker system
Check the Disk space
```
docker system df
```
