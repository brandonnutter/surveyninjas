#!/bin/sh

# Backup site on production before syncing
ssh -n 10.183.2.64 '/backup/production-site-backup.sh'

rsync -avz --exclude '.htaccess' --exclude 'config.php' --exclude 'qrcodes/*' /var/www/html/development/brandon/site/ /var/www/html/production/site/
rsync -avz --exclude '.htaccess' --exclude 'config.php' --exclude 'qrcodes/*' /var/www/html/production/site/ root@prod1.surveyninjas.com:/var/www/html/production/site/
rsync -avz --exclude '.htaccess' --exclude 'config.php' --exclude 'qrcodes/*' /var/www/html/production/site/ root@prod2.surveyninjas.com:/var/www/html/production/site/
