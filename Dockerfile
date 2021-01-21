FROM ubuntu:14.04
MAINTAINER "AYK <yg1700@dsgub.cloud>"
LABEL "purpose"="webserver practice"
RUN apt-get update
Run apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
Run ["/bin/bash","-c","echo hello >> test.html"]
EXPOSE 80
CMD apachectl -D FOREGROUND
