FROM ubuntu:16.04

RUN apt-get update && apt-get install -y bind9

workdir /etc/bind

COPY /configuration/db.wt13.ephec-ti.be.direct
COPY /configuration/db.wt13.ephec-ti.be.reverse
COPY /configuration/named.conf.local
COPY /configuration/slave.named.conf
