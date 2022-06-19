#!/bin/sh
mkdir -p tempdir
cp zzz_databases.tar.gz tempdir
cd tempdir
tar -xvf zzz_databases.tar.gz

mysql -u root -p1234 -f < zzz_etracs255.sql && \
mysql -u root -p1234 -f < zzz_image.sql && \
mysql -u root -p1234 -f < zzz_notification.sql

cd ..
rm -rf tempdir
