FROM ubuntu:18.04

# avoid timezone prompt
ENV DEBIAN_FRONTEND=noninteractive

# install stuff
RUN apt-get update
RUN apt-get -y install php-cgi php php-mysql lighttpd mariadb-client

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

COPY init.sh /root/
COPY initdb.sql /root/

EXPOSE 80

CMD ["/root/init.sh"]
