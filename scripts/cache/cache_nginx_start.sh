mkdir /usr/local/nginx/conf/conf.d
mkdir /var/cache/nginx
mkdir /var/log/nginx/lb
mkdir /var/log/nginx/cache
cp /home/vagrant/cache/usr/local/nginx/conf/conf.d/cache.conf /usr/local/nginx/conf/conf.d/cache.conf

service nginx start

