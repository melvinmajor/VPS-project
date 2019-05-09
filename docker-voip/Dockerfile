FROM ubuntu:18.04

# avoid timezone prompt
ENV DEBIAN_FRONTEND=noninteractive

# Main things to do with Aptitude
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y build-essential libxml2-dev libncurses5-dev libsqlite3-dev libtool uuid-dev libjansson-dev wget git-core subversion

# Preparation, installation and configuration for Asterisk
RUN mkdir /usr/src/asterisk && \
  cd /usr/src/asterisk && \
  wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15-current.tar.gz && \
  tar -zxvf asterisk-15-current.tar.gz && \
  cd asterisk-15.* && \
  ./configure && \
  make menuselect.makeopts && \
    menuselect/menuselect \
      --enable CORE-SOUNDS-FR-ULAW \
      --enable MOH-OPSOUND-ULAW \
      --enable EXTRA-SOUNDS-FR-ULAW \
  make menuselect.makeopts && \
  make && make install && make samples && make config && make install-logrotate
CMD ["asterisk", "stop"]
COPY config/sip.conf /etc/asterisk/sip.conf
COPY config/users.conf /etc/asterisk/users.conf
COPY config/extensions.conf /etc/asterisk/extensions.conf
COPY config/rtp.conf /etc/asterisk/rtp.conf

# Fail2ban integration
RUN apt-get install -y fail2ban
RUN rm /etc/fail2ban/filter.d/asterisk.conf
COPY config/fail2ban/filter.d/asterisk*.conf /etc/fail2ban/filter.d/
COPY config/fail2ban/jail.conf /etc/fail2ban/jail.conf

# Cleaning stuff - $BUILD_PACKAGES
RUN apt-get remove --purge -y && \
  apt-get -y autoremove && \
  apt-get -y clean

# Expose ports for connectivity and audio channel
EXPOSE 5060/udp
EXPOSE 10000-10050/udp

# Start Asterisk and Fail2ban services
RUN rm /var/run/fail2ban/fail2ban.sock || true
CMD ["service", "fail2ban", "restart"]
CMD ["asterisk", "reload"]
CMD ["asterisk", "-fvvvvvv"]
