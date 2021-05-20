chown -R www-data:www-data /Users/alvrodri/data/wordpress/wordpress
DIR="/Users/alvrodri/wordpress/wordpress"
if [ ! -d "$DIR" ]; then
    cp -r /wordpress /Users/alvrodri/data/wordpress/
    chown -R www-data:www-data /Users/alvrodri/data/wordpress/wordpress
fi
service php7.3-fpm start
service nginx start
bash