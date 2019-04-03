# Dockerfile for lighttpd

FROM alpine

RUN apk add --update --no-cache \
	lighttpd \
	lighttpd-mod_auth \
	php7-fpm \
        php7-cgi \
        php7 \
  && rm -rf /var/cache/apk/*

COPY etc/lighttpd/* /etc/lighttpd/
COPY etc/lighttpd/vhosts.d/* /etc/lighttpd/vhosts.d/
RUN mkdir -p /srv/htdocs/b2b.local/
RUN mkdir -p /srv/htdocs/www.local/
RUN mkdir -p /srv/htdocs/intra.local/
COPY site1/ /srv/htdocs/b2b.local/
COPY site2/ /srv/htdocs/www.local/
COPY start.sh /usr/local/bin/

EXPOSE 80

CMD ["start.sh"]
