#!/bin/bash
# as sudo

#USING: https://www.rosehosting.com/blog/install-and-configure-the-elk-stack-on-ubuntu-16-04/

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | apt-key add -
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | tee -a /etc/apt/sources.list.d/elastic-5.x.list
apt update
apt install elasticsearch

#after elasticserch config
apt install kibana
#after config mginx
apt-get install nginx -y

echo "admin:$(openssl passwd -apr1 nothing)" | sudo tee -a /etc/nginx/htpasswd.kibana

rm /etc/nginx/sites-enabled/default
#
ln -s /etc/nginx/sites-available/kibana /etc/nginx/sites-enabled/kibana

nginx -t

service nginx restart

apt install logstash