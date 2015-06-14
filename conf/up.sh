#!/bin/bash

set -e
. $HOME/608/conf/common
sudo $myCP limits.conf /etc/security/limits.conf
$myCP bash_profile $HOME/.bash_profile
$myCP cassandra.yaml $INSTALL_DIR/dsc-cassandra-2.1.6/conf
