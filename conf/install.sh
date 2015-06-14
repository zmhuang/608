#!/bin/bash

set -e

. ~/608/conf/common

mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

$WGET https://github.com/kairosdb/kairosdb/releases/download/v1.0.0/kairosdb-1.0.0-1.tar.gz
tar xf kairosdb-1.0.0-1.tar.gz

$WGET http://downloads.datastax.com/community/dsc-cassandra-2.1.6-bin.tar.gz
tar xf dsc-cassandra-2.1.6-bin.tar.gz

$WGET https://maven.java.net/content/repositories/releases/net/java/dev/jna/jna/4.1.0/jna-4.1.0.jar
/bin/cp jna-4.1.0.jar dsc-cassandra-2.1.6/lib
