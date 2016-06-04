FROM phusion/baseimage
MAINTAINER Mike S. <silvanovich.michael@gmail.com>
RUN apt-get update
RUN apt-get --assume-yes install jvm-7-avian-jre
RUN apt-get --assume-yes install telnet
ADD tomcat /var/tomcat
RUN mkdir -p /etc/my_init.d
ADD tomcat.sh /etc/my_init.d/tomcat.sh
RUN chmod 775 /var/tomcat/bin/catalina.sh
RUN chmod 775 /etc/my_init.d/tomcat.sh