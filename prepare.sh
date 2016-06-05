#!/bin/bash
mkdir -p /tmp/tomcat7.0.69
wget -O /tmp/tomcat7.0.69/tomcat.tar.gz http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.69/bin/apache-tomcat-7.0.69.tar.gz
tar -xvzf /tmp/tomcat7.0.69/tomcat.tar.gz --keep-old-files --strip-components=1 --directory ./tomcat/tomcat
cd memcached-manager-improved
mvn clean compile assembly:single
cp -f target/mmi-jar-with-dependencies.jar ../tomcat/tomcat/lib/mmi.jar
cd ../simple-web-app
mvn clean package
cp -f target/simple.war ../tomcat/tomcat/webapps/simple.war
rm -rf /tmp/tomcat7.0.69
