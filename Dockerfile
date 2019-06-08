FROM ubuntu:18.04
RUN  apt-get update
RUN  apt-get -y install nginx
RUN  apt-get -y install curl
RUN  apt-get -y install vim
COPY index.html /var/www/html
CMD ["nginx", "-g", "daemon off;"]
RUN  service nginx start
RUN  service nginx status

EXPOSE 80 443

RUN  nginx -v
