[![Analytics](https://ga-beacon.appspot.com/UA-73781306-2/memcached-modproxy-tomcat)](https://github.com/igrigorik/ga-beacon)

# Clusterize

## Sandbox for clusterization

This branch uses:

1. **[Apache2](https://httpd.apache.org/)** with **mod_proxy_ajp** as a balancer with sticky sessions
2. **[MemcachedSessionManager](https://code.google.com/p/memcached-session-manager/)** approach of session replication.

To play with do the following:

***Prerequisites**: Docker, Docker Composer, Git installed.

	git clone https://github.com/Silvmike/memcached-modproxy-tomcat.git


Run **docker-composer build** to build all containers required for running use case.

Run **docker-composer up** to run all required containers.

Balancer port is exposed to *:8080

TomcatX[1-3] port is exposed to *:808X

P.S. You may be interested in visiting **[this page](https://github.com/Silvmike/clusterize)**
