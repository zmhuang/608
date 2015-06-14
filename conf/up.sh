#!/bin/bash

set -e
sudo /bin/cp limits.conf /etc/security/limits.conf
/bin/cp bash_profile ~/.bash_profile
/bin/cp cassandra.yaml ~/install-cassandra/dsc-cassandra-2.1.6/conf
