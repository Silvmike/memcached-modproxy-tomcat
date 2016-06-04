#!/bin/bash
JAVA_OPTS="${JAVA_OPTS} -Dru.hardcoders.memcache.failoverNodes=$(hostname) -DjvmRoute=$(hostname)"