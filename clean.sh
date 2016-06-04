#!/bin/bash
cd memcached-manager-improved
mvn clean
rm -f ../tomcat/tomcat/lib/mmi.jar
mvn clean
rm -f ../tomcat/tomcat/webapps/simple.war