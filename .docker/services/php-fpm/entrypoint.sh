#!/bin/bash
set -e

#instala o mapas
cd /var/www/html
git clone https://github.com/secultce/mapasculturais.git
cd mapasculturais
git checkout homolog

#permissão root para pasta mapas
chmod 777 /var/www/html/mapasculturais/

#copy config file
cp -r /tmp/config.php /var/www/html/mapasculturais/src/protected/application/conf/config.php

#instala o tema CE
cd /var/www/html/mapasculturais/src/protected/application/themes
git clone  https://github.com/secultce/theme-Ceara.git Ceara

#instala o plugin de authentication    
cd /var/www/html/mapasculturais/src/protected/application/plugins
git clone  https://github.com/secultce/plugin-MultipleLocalAuth.git MultipleLocalAuth


#criar os proxies do banco de dados
cd /var/www/html/mapasculturais/src/protected
rm -rf ./DoctrineProxies
mkdir DoctrineProxies
chmod 777 DoctrineProxies

#starta a aplicação
cd /var/www/html/mapasculturais/scripts
./deploy.sh


#habilita o locale para região de forteleza
if [ ! -f /.deployed ]; then
    echo "LC_ALL=en_US.UTF-8" >> /etc/environment
    echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
    echo "LANG=en_US.UTF-8" > /etc/locale.conf
    locale-gen en_US.UTF-8
    touch /.deployed
fi

#starta o cron da aplicação php
nohup /recreate-pending-pcache-cron.sh &

exec "$@"
