FROM debian:buster

RUN apt update

RUN apt -y install vim
RUN apt -y install software-properties-common
RUN apt -y install mariadb-server

COPY ./conf/start.sh /conf/start.sh

RUN chmod 777 /conf/start.sh

ENTRYPOINT /conf/start.sh
EXPOSE 3306
