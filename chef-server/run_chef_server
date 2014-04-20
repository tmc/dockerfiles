#!/bin/sh
set -x
sysctl -w kernel.shmmax=17179869184 # for postgres
/opt/chef-server/embedded/bin/runsvdir-start &
tail -F /opt/chef-server/embedded/service/*/log/current

