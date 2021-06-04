mysql_install_db
service mysql start
mysql -e "CREATE USER '$DB_USER_ADMIN'@'%' IDENTIFIED BY '$DB_PASSWORD_ADMIN'"
mysql -e "CREATE USER '$DB_USER_REG'@'%' IDENTIFIED BY '$DB_PASSWORD_REG'"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$DB_USER_ADMIN'@'%'"
mysql -e "FLUSH PRIVILEGES"
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress"
tail -f /dev/null #cambiar esto
