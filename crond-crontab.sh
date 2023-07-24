#!/bin/sh
/usr/bin/crontab /mnt/crontab
exec /usr/sbin/crond -f -L /dev/stdout