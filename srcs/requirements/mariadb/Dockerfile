FROM debian:buster

RUN apt update

RUN apt -y install vim
RUN apt -y install software-properties-common
RUN add-apt-repository 'deb [arch=amd64] http://mariadb.mirror.liquidtelecom.com/repo/10.4/debian buster main'
RUN apt -y install mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/start.sh /conf/start.sh

RUN chmod 777 /conf/start.sh

ENTRYPOINT /conf/start.sh
EXPOSE 3306
