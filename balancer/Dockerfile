FROM phusion/baseimage
MAINTAINER Mike S. <silvanovich.michael@gmail.com>
# installing dependencies and required tools
RUN apt-get update && apt-get --assume-yes install wget build-essential apache2
RUN a2enmod proxy proxy_ajp proxy_balancer rewrite proxy_connect proxy_html session session_cookie reqtimeout heartbeat lbmethod_byrequests slotmem_shm
RUN rm /etc/apache2/apache2.conf
ADD apache2.conf /etc/apache2/apache2.conf
ADD hardcoders.conf /etc/apache2/hardcoders.conf
RUN mkdir -p /etc/my_init.d
ADD apache2.sh /etc/my_init.d/apache2.sh
RUN chmod 775 /etc/my_init.d/apache2.sh
