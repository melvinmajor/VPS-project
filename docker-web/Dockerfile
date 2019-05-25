FROM ubuntu:18.04

# avoid timezone prompt
ENV DEBIAN_FRONTEND=noninteractive

# install stuff
RUN apt-get update
RUN apt-get -y install php-cgi php lighttpd
RUN apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:certbot/certbot && \
  apt-get -y update && \
  apt-get -y install certbot

# set permissions
RUN chmod -R 777 /var/log/lighttpd && chmod -R 777 /var/cache/lighttpd

# add lighttpd group and user
RUN groupadd -g 208 lighttpd && useradd -u 208 -g lighttpd -d /var/www lighttpd

# copy lighttpd config
COPY lighttpd/ /etc/lighttpd/

# copy www website
RUN mkdir -p /srv/htdocs/www.local/
COPY www/ /srv/htdocs/www.local/

# copy b2b website
RUN mkdir -p /srv/htdocs/b2b.local/
COPY b2b/ /srv/htdocs/b2b.local/

# copy intra website
RUN mkdir -p /srv/htdocs/intra.local/
COPY intra/ /srv/htdocs/intra.local/

# create let's encrypt certificate
RUN certbot certonly --webroot -w /srv/htdocs/www.local -d www.wt13.ephec-ti.be --email m.camposcasares@students.ephec.be --agree-tos --non-interactive
RUN certbot certonly --webroot -w /srv/htdocs/b2b.local -d b2b.wt13.ephec-ti.be --email m.camposcasares@students.ephec.be --agree-tos --non-interactive
RUN certbot certonly --webroot -w /srv/htdocs/intra.local -d intranet.wt13.ephec-ti.be --email m.camposcasares@students.ephec.be --agree-tos --non-interactive

# combine certificate and private key in one file
RUN cat /etc/letsencrypt/live/www.wt13.ephec-ti.be/cert.pem /etc/letsencrypt/live/www.wt13.ephec-ti.be/privkey.pem > /etc/letsencrypt/live/www.wt13.ephec-ti.be/web.pem
RUN cat /etc/letsencrypt/live/b2b.wt13.ephec-ti.be/cert.pem /etc/letsencrypt/live/b2b.wt13.ephec-ti.be/privkey.pem > /etc/letsencrypt/live/b2b.wt13.ephec-ti.be/web.pem
RUN cat /etc/letsencrypt/live/intranet.wt13.ephec-ti.be/cert.pem /etc/letsencrypt/live/intranet.wt13.ephec-ti.be/privkey.pem > /etc/letsencrypt/live/intranet.wt13.ephec-ti.be/web.pem

# restart lighttpd service to match certificate
CMD ["service", "lighttpd", "restart"]

# expose port 80 (http) and 443 (https) for lighttpd
EXPOSE 80
EXPOSE 443

# run lighttpd with all configuration set
CMD ["lighttpd", "-D", "-f",  "/etc/lighttpd/lighttpd.conf"]
