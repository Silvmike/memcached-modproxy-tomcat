#!/bin/bash
cd memcached-manager-improved
mvn clean compile assembly:single
cp -f target/mmi-jar-with-dependencies.jar ../tomcat/tomcat/lib/mmi.jar
cd ../simple-web-app
mvn clean package
cp -f target/simple.war ../tomcat/tomcat/webapps/simple.war