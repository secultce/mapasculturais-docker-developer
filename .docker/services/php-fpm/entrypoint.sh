#!/bin/bash
set -e

chmod 777 /var/www/html/mapasculturais/

cd /var/www/html/mapasculturais/src/protected/application/themes
git clone  https://github.com/secultce/theme-Ceara.git Ceara
    
cd /var/www/html/mapasculturais/src/protected/application/plugins
git clone  https://github.com/secultce/plugin-MultipleLocalAuth.git MultipleLocalAuth


cd /var/www/html/mapasculturais/src/protected
rm -rf ./DoctrineProxies
mkdir DoctrineProxies
chmod 777 DoctrineProxies

cd /var/www/html/mapasculturais/scripts
./deploy.sh

if [ ! -f /.deployed ]; then
    echo "LC_ALL=en_US.UTF-8" >> /etc/environment
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
    echo "LANG=en_US.UTF-8" > /etc/locale.conf
    locale-gen en_US.UTF-8
    touch /.deployed
fi

nohup /recreate-pending-pcache-cron.sh &

exec "$@"
