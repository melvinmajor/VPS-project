FROM ubuntu:18.04

RUN apt-get update && apt-get install -y bind9

COPY /configuration/db.wt13.ephec-ti.be /etc/bind/db.wt13.ephec-ti.be
COPY /configuration/db.51 /etc/bind/db.51
COPY /configuration named.conf.local /etc/bind/named.conf.local

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
