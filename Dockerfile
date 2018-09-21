Install the apache webserver using docker file
===============================================
FROM ubuntu
MAINTAINER jogeswar jogeswaraws@gmail.com
RUN apt update && apt-get install apache2 -y
EXPOSE 80
CMD apache2ctl -D FOREGROUND
=================================================================
Afer steps

->Docker build -t msr/apache2:1.0 .
->Docker run -itd -p 8080:80 <imageName>:<tagName>


