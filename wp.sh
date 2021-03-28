#!/bin/bash

WORDPRESS 

sudo apt update
sudo apt install -y wordpress php libapache2-mod-php 
sudo nano /etc/apache2/sites-available/wordpress.conf

Alias /blog /usr/share/wordpress
<Directory /usr/share/wordpress>
    Options FollowSymLinks
    AllowOverride Limit Options FileInfo
    DirectoryIndex index.php
    Order allow,deny
    Allow from all
</Directory>
<Directory /usr/share/wordpress/wp-content>
    Options FollowSymLinks
    Order allow,deny
    Allow from all
</Directory> 

sudo systemctl reload apache2
sudo a2ensite wordpress
sudo systemctl restart apache2
sudo a2enmod rewrite
sudo systemctl status apache2

sudo nano /etc/wordpress/config-localhost.php

<?php
define('DB_NAME', 'wordpress');
define('DB_USER', 'wordpress');
define('DB_PASSWORD', 'wordpress');
define('DB_HOST', 'DB IP ADDRESS');
define('DB_COLLATE', 'utf8_general_ci');
define('WP_CONTENT_DIR', '/usr/share/wordpress/wp-content');
?>

sudo nano /etc/wordpress/config-WORDPRESS IP ADDRESS.php

<?php
define('DB_NAME', 'wordpress');
define('DB_USER', 'wordpress');
define('DB_PASSWORD', 'wordpress');
define('DB_HOST', 'DB IP ADDRESS');
define('DB_COLLATE', 'utf8_general_ci');
define('WP_CONTENT_DIR', '/usr/share/wordpress/wp-content');
?>








