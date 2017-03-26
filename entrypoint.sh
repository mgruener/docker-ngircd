#!/bin/sh

/usr/bin/confd -onetime -backend env
exec /usr/sbin/ngircd -n -f /etc/ngircd/ngircd.conf
