#!/bin/sh
rsync -avz --exclude '.htaccess' --exclude 'config.php' --exclude 'qrcodes/*' --exclude 'site/index.php' /var/www/html/development/brandon/ /var/www/html/production/
rsync -avz --exclude '.htaccess' --exclude 'config.php' --exclude 'qrcodes/*' --exclude 'site/index.php' /var/www/html/production/ root@prod1.surveyninjas.com:/var/www/html/production/
rsync -avz --exclude '.htaccess' --exclude 'config.php' --exclude 'qrcodes/*' --exclude 'site/index.php' /var/www/html/production/ root@prod2.surveyninjas.com:/var/www/html/production/
