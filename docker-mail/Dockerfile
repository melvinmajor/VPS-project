FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y postfix

COPY configuration/main.cf /etc/postfix/main.cf

expose 25

CMD ["postfix", "start-fg"]
