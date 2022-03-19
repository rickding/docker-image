FROM mysql:5.7.35

LABEL maintainer="白云信科，研发中心"

COPY ./conf/my.cnf /etc/mysql/
COPY ./initdb/*.* /docker-entrypoint-initdb.d/

EXPOSE 3306
