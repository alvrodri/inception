FROM debian:buster

RUN apt update

RUN apt -y install vim
RUN apt -y install software-properties-common
RUN add-apt-repository 'deb [arch=amd64] http://mariadb.mirror.liquidtelecom.com/repo/10.4/debian buster main'
RUN apt -y install mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

CMD chown -R mysql:mysql /Users/alvrodri/data/mariadb/ ; \
	cp -R -p /var/lib/mysql/* /Users/alvrodri/data/mariadb/ ; \
	service mysql start ; \
	mysql -e "CREATE USER '$DB_USER_ADMIN'@'%' IDENTIFIED BY '$DB_PASSWORD_ADMIN'" ; \
	mysql -e "CREATE USER '$DB_USER_REG'@'%' IDENTIFIED BY '$DB_PASSWORD_REG'" ; \
	mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$DB_USER_ADMIN'@'%'" ; \
	mysql -e "FLUSH PRIVILEGES" ; \
	mysql -e "CREATE DATABASE IF NOT EXISTS wordpress" ; \
	tail -f /var/log/mysql/error.log

EXPOSE 3306
