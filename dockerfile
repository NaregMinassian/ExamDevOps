FROM ubuntu:18.04
RUN apt-get update -y && apt-get install apache2 -y

COPY ./webapp /var/www/html

CMD ["apache2ctl","-D","FOREGROUND"]

EXPOSE 80
