FROM ubuntu:19.04

# avoid timezone prompt
ENV DEBIAN_FRONTEND=noninteractive

# Main things to do with apt-get
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y build-essential libxml2-dev libncurses5-dev libsqlite3-dev libtool uuid-dev libjansson-dev wget git-core subversion

# Preparation, installation and configuration of Asterisk
RUN mkdir /usr/src/asterisk && \
  cd /usr/src/asterisk && \
  wget -q http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-15.7.2.tar.gz && \
  tar -zxvf asterisk-15.7.2.tar.gz && \
  cd asterisk-15.* && \
  ./configure && \
  make menuselect.makeopts && \
    menuselect/menuselect \
      --enable CORE-SOUNDS-FR-ULAW \
      --enable MOH-OPSOUND-ULAW \
      --enable EXTRA-SOUNDS-FR-ULAW \
  make menuselect.makeopts && \
  make && make install && make samples && make config && make install-logrotate

# Copy all settings of Asterisk
COPY config/sip.conf /etc/asterisk/sip.conf
COPY config/users.conf /etc/asterisk/users.conf
COPY config/extensions.conf /etc/asterisk/extensions.conf
COPY config/rtp.conf /etc/asterisk/rtp.conf
COPY config/voicemail.conf /etc/asterisk/voicemail.conf
COPY config/iax.conf /etc/asterisk/iax.conf

# Cleaning stuff
RUN rm -rf /usr/src/asterisk

# set permissions
RUN chmod -R 700 /var/log/asterisk && \
  chmod -R 700 /var/log/asterisk/cdr-csv

# Expose ports for connectivity and audio channel
EXPOSE 5060/udp
EXPOSE 4569/udp
EXPOSE 10000-10060/udp

# Start Asterisk
CMD ["asterisk", "-f"]

