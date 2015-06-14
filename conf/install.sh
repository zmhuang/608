#!/bin/bash

set -e

. $HOME/608/conf/common

mkdir -p $INSTALL_DIR
cd $INSTALL_DIR

# 如果连接超时尝试关掉所有 TERM 窗口重新执行 install.sh。
#$WGET https://github.com/kairosdb/kairosdb/releases/download/v1.0.0/kairosdb-1.0.0-1.tar.gz
tar xf kairosdb-1.0.0-1.tar.gz

$WGET http://downloads.datastax.com/community/dsc-cassandra-2.1.6-bin.tar.gz
tar xf dsc-cassandra-2.1.6-bin.tar.gz

$WGET https://maven.java.net/content/repositories/releases/net/java/dev/jna/jna/4.1.0/jna-4.1.0.jar
/bin/cp jna-4.1.0.jar dsc-cassandra-2.1.6/lib

if [ ! -d yajl-py ] ; then
    git clone https://github.com/pykler/yajl-py.git
fi
cd yajl-py
git pull
sudo python ./setup.py install
cd ..

if [ ! -d pyKairosDB ] ; then
    git clone https://github.com/pcn/pyKairosDB.git
fi
cd pyKairosDB
git pull
sudo python ./setup.py install
cd ..
