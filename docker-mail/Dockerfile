FROM ubuntu:18.04

#installation des éléments pour postfix
RUN apt-get update -y && apt-get install -y syslog-ng postfix telnet

#installation de mailutils
RUN apt-get install -y mailutils

#installation de vim
RUN apt-get install -y vim

#installation de DKIM
RUN apt-get install -y opendkim opendkim-tools

#installation de IMAP
RUN apt-get install -y dovecot-core dovecot-imapd dovecot-mysql

#création d'un host virtuel pour y mettre les boites mails
RUN groupadd -g 5000 vhosts && useradd -g vhosts -u 5000 vhosts -d /var/mail/vhosts -s /bin/false -m

#intégration d'un db
RUN apt-get install -y mariadb-server
COPY script/db.sql script/db.sql
COPY script/creation_utilisateurs_messagerie.sql script/creation_utilisateurs_messagerie.sql

RUN apt-get install -y postfix-mysql

#intégration du fichier de configuration
COPY configuration/main.cf /etc/postfix/main.cf
COPY configuration/generic /etc/postfix/generic
COPY configuration/mysql-virtual-mailbox-domains.cf /etc/postfix/mysql-virtual-mailbox-domains.cf
COPY configuration/mysql-virtual-mailbox-maps.cf /etc/postfix/mysql-virtual-mailbox-maps.cf

#intégration des adresses mail virtuelles
COPY configuration/vmailbox /etc/postfix/vmailbox
RUN postmap /etc/postfix/vmailbox

#configuration IMAP
COPY configuration/dovecot/dovecot.conf /etc/dovecot/dovecot.conf
COPY configuration/dovecot/dovecot-sql.conf.ext /etc/dovecot/dovecot-sql.conf.ext
COPY configuration/dovecot/conf.d/10-auth.conf /etc/dovecot/conf.d/10-auth.conf
COPY configuration/dovecot/conf.d/10-mail.conf /etc/dovecot/conf.d/10-mail.conf
COPY configuration/dovecot/conf.d/10-master.conf /etc/dovecot/conf.d/10-master.conf
COPY configuration/dovecot/conf.d/auth-sql.conf.ext /etc/dovecot/conf.d/auth-sql.conf.ext

expose 25 3306 143

cmd ["sh", "-c", "service syslog-ng start ; service nginx start; service mysql start; service mailutils start; sed -ie 's/root@Debian02/'$(echo $(whoami)@$(hostname))'/' /etc/postfix/generic; postmap /etc/postfix/generic; sh script/create_db.sh; mysql -u root < script/db.sql; mysql -u root < script/creation_utilisateurs_messagerie.sql; service postfix start; service dovecot start; tail -F /var/log/mail.log"]
