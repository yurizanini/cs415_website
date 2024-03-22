FROM ubuntu
RUN apt update -y && apt install apache2 -y
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
COPY ./build/ /var/www/html/
EXPOSE 80