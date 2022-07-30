#!/usr/bin/env bash

echo "Installing Apache..."
yum -y install httpd >/dev/null 2>&1
echo "Copiando pasta html..."
cp -r /vagrant/html/* /var/www/html/
service httpd start
echo "Updating..."
yum -y update