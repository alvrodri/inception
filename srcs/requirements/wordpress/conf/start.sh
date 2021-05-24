DIR="/var/www/html/wordpress"
if [ ! -d "$DIR" ]; then
    cp -r /wordpress /var/www/html/wordpress
    cp /conf/wp-config.php /var/www/html/wordpress/wp-config.php
    chown -R www-data:www-data /var/www/html/wordpress
fi
service php7.3-fpm start
service nginx start
bash