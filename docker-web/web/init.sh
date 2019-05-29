#!/bin/sh

db=51.77.203.41

while ! mysqladmin ping -h"$db" -p"$DB_PASSWORD" --silent; do
    sleep 1
done

cat /root/initdb.sql | mariadb -uroot -h"$db" -p"$DB_PASSWORD" || echo failed 

lighttpd -D -f /etc/lighttpd/lighttpd.conf
