FROM mariadb:latest

ENV MYSQL_ROOT_PASSWORD=123456
ENV MYSQL_DATABASE=test

COPY init.sql /docker-entrypoint-initdb.d/
