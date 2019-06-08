# 1. Step Build
FROM node:10 as build_step
WORKDIR /app
ADD . /app
RUN npm i
RUN npm install -g @angular/cli
RUN ng build


# 2. Step Build
FROM ubuntu:18.04
RUN  apt-get update
RUN  apt-get -y install nginx
RUN  apt-get -y install curl
RUN  apt-get -y install vim
COPY --from=build_step /app/dist/tutorial /var/www/html
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80 443