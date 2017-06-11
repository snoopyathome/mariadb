FROM alpine:3.6

RUN apk add --update mariadb mariadb-client &&\
    mkdir -p /var/lib/mysql &&\
    mkdir -p /run/mysqld &&\
    chown -R mysql:mysql /var/lib/mysql &&\
    chown -R mysql:mysql /run/mysqld &&\
    rm -rf /var/cache/apk/*

USER mysql

CMD ["mysqld_safe"]
