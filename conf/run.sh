#!/bin/sh
set -e

. $HOME/608/config
cd $INSTALL_DIR/dsc-cassandra-2.1.6
bin/cassandra -f
