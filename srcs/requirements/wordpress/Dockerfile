FROM debian:buster

RUN apt update

RUN apt -y install vim
RUN apt -y install software-properties-common
RUN add-apt-repository 'deb [arch=amd64] http://mariadb.mirror.liquidtelecom.com/repo/10.4/debian buster main'
RUN apt -y install mariadb-client
RUN apt -y install wget php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath 
RUN wget -P /var/www/html https://wordpress.org/latest.tar.gz
RUN tar -xvzf /var/www/html/latest.tar.gz

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/
COPY ./conf/wp-config.php /conf/wp-config.php
COPY ./conf/start.sh /conf/start.sh

RUN chmod 777 ./conf/start.sh
RUN chmod 777 -R /var/www/html/

ENTRYPOINT ./conf/start.sh
