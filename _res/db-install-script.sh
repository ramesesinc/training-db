#!/bin/sh
mkdir -p tempdir
cp zzz_databases.tar.gz tempdir
cd tempdir
tar -xvf zzz_databases.tar.gz

docker exec -it  mysql bash

cd ..
rm -rf tempdir
