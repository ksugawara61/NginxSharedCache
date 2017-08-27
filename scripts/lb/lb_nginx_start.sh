mkdir /usr/local/nginx/conf/conf.d
mkdir /var/log/nginx/lb
cp /home/vagrant/lb/usr/local/nginx/conf/conf.d/lb.conf /usr/local/nginx/conf/conf.d/lb.conf

service nginx start
