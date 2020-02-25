#!/bin/sh

repo=/root/.influxdb

if [ "$1" = "standard" ]; then
    cp "${repo}/overlay/etc/motd" "/etc/motd"
fi

sysrc -f /etc/rc.conf influxdb_enable="YES"