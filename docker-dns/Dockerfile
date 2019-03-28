FROM ubuntu:latest

RUN apt-get update && apt-get install -y bind9

WORKDIR /etc/bind
VOLUME ["/etc/bind"]

COPY /configuration/named.conf /etc/bind/named.conf
COPY /configuration/named.conf.options /etc/bind/named.conf.options
COPY /configuration/named.conf.default-zones /etc/bind/named.conf.default-zones
COPY /configuration/named.conf.local /etc/bind/named.conf.local
COPY /configuration/db.wt13.ephec-ti.be /etc/bind/db.wt13.ephec-ti.be
COPY /configuration/db.interne.wt13.ephec-ti.be /etc/bind/db.interne.wt13.ephec-ti.be

EXPOSE 53 53/udp
CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
