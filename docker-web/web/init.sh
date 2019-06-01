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

echo before sleep
sleep 5

certbot certonly --webroot -w /etc/lighttpd/certbot -d www.wt13.ephec-ti.be -d b2b.wt13.ephec-ti.be --email m.camposcasares@students.ephec.be --agree-tos --non-interactive 

sleep 5

echo restarting
pkill lighttpd

# will do for now
sleep 2

# uncomment include
sed -e '/ssl.conf/s/^#//' /etc/lighttpd/lighttpd.conf -i

# restart lighttpd
lighttpd -f /etc/lighttpd/lighttpd.conf

tail -f $files
