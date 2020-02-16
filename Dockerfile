FROM alpine:3.11

RUN apk add --update mariadb mariadb-client &&\
    mkdir -p /var/lib/mysql &&\
    mkdir -p /run/mysqld &&\
    chown -R mysql:mysql /var/lib/mysql &&\
    chown -R mysql:mysql /run/mysqld &&\
    rm -rf /var/cache/apk/*

USER mysql

CMD ["mysqld", "--max-allowed-packet=128M", "--innodb_log_file_size=512M", "--bind-address=0.0.0.0", "--skip-networking=0"]
