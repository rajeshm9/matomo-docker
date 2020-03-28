#!/bin/sh -x
set -e

#sed -i "s/Listen 80/Listen ${PORT:-80}/g" /etc/apache2/ports.conf
#sed -i "s/:80/:${PORT:-80}/g" /etc/apache2/sites-enabled/*

if [ ! -e matomo.php ]; then
    #tar cf - --one-file-system   -C /tmp/matomo . | tar xf --no-overwrite-dir -
	cp -ap /tmp/matomo/* .
	#chown -R www-data .
fi

exec "$@"
