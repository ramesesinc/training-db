#!/bin/sh
mkdir -p tempdir
cp zzz_databases.tar.gz tempdir
cd tempdir
tar -xvf zzz_databases.tar.gz

docker exec -it  mysql bash && mysql -u root -p1234 -e 'show databases' && exit

#mysql -P 13306 -u root -p1234 -f < zzz_etracs255.sql && \
#mysql -P 13306 -u root -p1234 -f < zzz_image.sql && \
#mysql -P 13306 -u root -p1234 -f < zzz_notification.sql

cd ..
rm -rf tempdir
