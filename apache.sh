#!/bin/bash


yum install httpd -y
echo "hello Abdul" >> /var/www/html/index.html
systemctl start httpd
systemctl enable httpd
