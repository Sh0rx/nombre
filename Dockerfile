FROM quay.io/centos/centos:stream8
MAINTAINER Jorge Mohedano Saul Matias <jorge.mohedano88@usal.es>

RUN dnf -y install httpd
RUN echo "<!DOCTYPE html><html><head><title>Jorge Mohedano y Saul Matias</title></head></html>" > /var/www/html/index.html

EXPOSE 80
CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
