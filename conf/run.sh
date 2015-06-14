#!/bin/sh
set -e

. ~/608/config
cd ~/install-cassandra/dsc-cassandra-2.1.6
bin/cassandra -f
