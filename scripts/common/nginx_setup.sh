#!/usr/bin/env bash

yum install -y gcc-c++ pcre pcre-devel zlib zlib-devel openssl openssl-devel unzip
cd /usr/local/src
wget https://nginx.org/download/nginx-1.12.1.tar.gz
tar xzvf nginx-1.12.1.tar.gz
wget https://github.com/FRiCKLE/ngx_cache_purge/archive/master.zip -O ngx_cache_purge.zip
unzip ngx_cache_purge.zip
cd /usr/local/src/nginx-1.12.1
./configure \
 --add-module=/usr/local/src/ngx_cache_purge-master \
 --with-threads \
 --with-file-aio \
 --with-http_ssl_module \
 --with-http_v2_module \
 --with-http_stub_status_module
make
make install

cp /home/vagrant/common/etc/init.d/nginx /etc/init.d/nginx
cp /home/vagrant/common/etc/sysconfig/nginx /etc/sysconfig/nginx

chmod 755 /etc/init.d/nginx
service nginx start

chkconfig --add nginx
chkconfig nginx on
