
## Create dockerfile
* Create dockerfile and import images from docker hub
* Docker run file (name + tag version )

### Docker file Build
* docker build -t zsevens/ubuntu:1.0 . 

### Set name dockerfile
* docker run --rm --name myubuntu -p 5000:80 -d zsevens/ubuntu:1.0

### Enter ubuntu
* docker exec -it myubuntu bash

### Show command
* docker exec -it myubuntu curl 127.0.0.1

### EXPOSE
* Open port for connect to external
* # EXPOSE 4200

### set extanal in docker allow all
* --host 0.0.0.0

### CMD ng serve --host 0.0.0.0