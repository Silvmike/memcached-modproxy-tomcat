#!/bin/bash
cd memcached-manager-improved
mvn clean
rm -f ../tomcat/tomcat/lib/mmi.jar
cd ../simple-web-app
mvn clean
rm -f ../tomcat/tomcat/webapps/simple.war
