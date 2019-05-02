FROM ubuntu:18.04

# avoid timezone prompt
ENV DEBIAN_FRONTEND=noninteractive

# Main things to do with Aptitude
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y build-essential libxml2-dev libncurses5-dev linux-headers-`uname -r` libsqlite3-dev libssl-dev uuid-dev libjansson-dev wget

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
  make && make install && make samples && make config

# import configuration files
# COPY config/manager.conf /etc/asterisk/manager.conf
# COPY config/http.conf /etc/asterisk/http.conf

RUN /etc/init.d/asterisk restart
CMD ["asterisk", "vvvvvvc"]
