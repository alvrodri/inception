DIR="/Users/alvrodri/wordpress/mariadb"

chown -R mysql:mysql /Users/alvrodri/data/mariadb/
if [ ! -d "$DIR" ]; then
    cp -R -p /var/lib/mysql/* /Users/alvrodri/data/mariadb/
fi
service mysql start
mysql -e "CREATE USER '$DB_USER_ADMIN'@'%' IDENTIFIED BY '$DB_PASSWORD_ADMIN'"
mysql -e "CREATE USER '$DB_USER_REG'@'%' IDENTIFIED BY '$DB_PASSWORD_REG'"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '$DB_USER_ADMIN'@'%'"
mysql -e "FLUSH PRIVILEGES"
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress"
tail -f /var/log/mysql/error.log