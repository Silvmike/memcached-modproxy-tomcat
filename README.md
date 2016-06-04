[![Analytics](https://ga-beacon.appspot.com/UA-73781306-2/memcached-modproxy-tomcat)](https://github.com/igrigorik/ga-beacon)

# Clusterize

## Sandbox for clusterization

This branch uses:

1. **[Apache2](https://httpd.apache.org/)** with **mod_proxy_ajp** as a balancer with sticky sessions
2. **[MemcachedSessionManager](https://code.google.com/p/memcached-session-manager/)** approach of session replication.

## Up and running

**Prerequisites**: Docker, Docker Composer, Git installed.

	git clone https://github.com/Silvmike/memcached-modproxy-tomcat.git

Run **sh prepare.sh && docker-composer build** to build all containers required for running use case.

Run **docker-composer up** to run all required containers.

## Access

To access an application follow the link [http://localhost:8080/simple](http://localhost:8080/simple)

Balancer port is exposed to *:8080

TomcatX[1-3] port is exposed to *:808X

## JSESSIONID

If you check the format of JSESSIONID cookie, you'll something like this:

	A987F58AB5F24E5634C4D8B4256D330C-tomcat3.tomcat1

tomcat3 (alias assigned via tomcat configuration, see setenv.sh) - here is a backup node corresponding to memcache3, and the tomcat1 - is the primary Tomcat node, processed your request (alias assigned in Apache2 mod_proxy).

P.S. You may be interested in visiting **[this page](https://github.com/Silvmike/clusterize)**
