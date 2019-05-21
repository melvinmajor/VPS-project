FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y syslog-ng postfix telnet


COPY configuration/main.cf /etc/postfix/main.cf

expose 25

cmd ["sh", "-c", "service syslog-ng start ; service postfix start ; tail -F /var/log/mail.log"]
