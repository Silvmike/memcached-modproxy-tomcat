FROM phusion/baseimage
MAINTAINER Mike S. <silvanovich.michael@gmail.com>
# installing dependencies and required tools
RUN apt-get update
RUN apt-get --assume-yes install memcached
# Replacing existing configuration
RUN rm /etc/memcached.conf
ADD memcached.conf /etc/memcached.conf
# Configuring startup
RUN mkdir -p /etc/my_init.d
ADD memcached.sh /etc/my_init.d/memcached.sh
RUN chmod 775 /etc/my_init.d/memcached.sh