FROM ubuntu
MAINTAINER eyano (pascaltshingila3535@gmail.com)
RUN apt update
RUN apt install -y nginx
EXPOSE 80
ADD / /var/www/html/
ENTRYPOINT ["usr/sbin/nginx","-g","daemon off;"]
