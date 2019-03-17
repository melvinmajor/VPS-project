FROM sameersbn/bind

RUN apt-get update && apt-get install -y bind9

# Placer les configurations des sites
ADD configDNS/named.conf /etc/bind/
ADD configDNS/named.conf.local /etc/bind/
ADD configDNS/db.wt13.ephec-ti.be.direct /etc/bind/
ADD configDNS/db.wt13.ephec-ti.be.reverse /etc/bind/
