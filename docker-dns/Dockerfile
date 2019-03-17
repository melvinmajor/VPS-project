FROM ubuntu:16.04

RUN apt-get update && apt-get install -y bind9

workdir /etc/bind

COPY /configuration/db.wt13.ephec-ti.be.direct /etc/bind/
COPY /configuration/db.wt13.ephec-ti.be.reverse /etc/bind/
COPY /configuration/named.conf.local /etc/bind/
COPY /configuration/slave.named.conf /etc/bind/
