## DOCKER VOLUMES
#### knowing docker vloumes
```
#docker volumes ls
```
#### Creating docker volume
```
docker volume create <volumename>
```
#### checking volume deatils
```
docker volume inspect <volumename>
```
#### Attaching docker volume
```
Note: only we can attach new containers

docker run -it -v <volumename>:<mountpoint> <imagename>
 eg: docker run -it -v testvol:/tmp/data ubuntu:latest
```
