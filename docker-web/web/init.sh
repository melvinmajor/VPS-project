#!/bin/bash

db=51.77.203.41

while ! mysqladmin ping -h"$db" -p"$DB_PASSWORD" --silent; do
    sleep 1
done

cat /root/initdb.sql | mariadb -uroot -h"$db" -p"$DB_PASSWORD" || echo failed 

files=$(echo /var/log/lighttpd/{b2b_error.log,b2b_access.log,www_access.log,www_error.log,intranet_access.log,intranet_error.log})

touch $files
chmod 777 $files

lighttpd -f /etc/lighttpd/lighttpd.conf

tail -f $files
