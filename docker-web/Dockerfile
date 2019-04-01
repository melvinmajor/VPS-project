# Dockerfile for lighttpd

FROM alpine

RUN apk add --update --no-cache \
	lighttpd \
	lighttpd-mod_auth \
	php7-fpm \
        php7-cgi \
        php7 \
  && rm -rf /var/cache/apk/*

## workaround for bug preventing sync between VirtualBox and host
# http://serverfault.com/questions/240038/lighttpd-broken-when-serving-from-virtualbox-shared-folder
RUN echo server.network-backend = \"writev\" >> /etc/lighttpd/lighttpd.conf

COPY etc/lighttpd/* /etc/lighttpd/
COPY etc/lighttpd/vhosts.d/* /etc/lighttpd/vhosts.d/
RUN mkdir -p /srv/htdocs/b2b.local/
RUN mkdir -p /srv/htdocs/www.local/
RUN mkdir -p /srv/htdocs/intra.local/
COPY site1/* /srv/htdocs/b2b.local/
COPY site1/css/* /srv/htdocs/b2b.local/css/
COPY site2/* /srv/htdocs/www.local/
COPY site2/css/* /srv/htdocs/www.local/css/
COPY site3/* /srv/htdocs/intra.local/
COPY site3/css/* /srv/htdocs/intra.local/css/
COPY start.sh /usr/local/bin/

EXPOSE 80

CMD ["start.sh"]
