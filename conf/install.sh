#!/bin/bash

set -e

INSTALL_DIR="~/614-install"
WGET="wget -c --timeout=15"

mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

if [ ! -f kairosdb-1.0.0-1.tar.gz ] ; then
    $WGET https://github.com/kairosdb/kairosdb/releases/download/v1.0.0/kairosdb-1.0.0-1.tar.gz
    tar xf kairosdb-1.0.0-1.tar.gz
fi

if [ ! -f jna-4.1.0.jar ] ; then
    $WGET https://maven.java.net/content/repositories/releases/net/java/dev/jna/jna/4.1.0/jna-4.1.0.jar
    tar xf dsc-cassandra-2.1.6-bin.tar.gz
fi

if [ ! -f dsc-cassandra-2.1.6-bin.tar.gz ] ; then
    $WGET http://downloads.datastax.com/community/dsc-cassandra-2.1.6-bin.tar.gz
    /bin/cp jna-4.1.0.jar dsc-cassandra-2.1.6/lib
fi
