FROM mariadb/server

RUN sed -e '/127.0.0.1/s/^#//' -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/my.cnf -i
