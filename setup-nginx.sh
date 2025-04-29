#!/bin/bash

cwd=$(pwd)

apt update && apt upgrade -y
apt install -y nginx

unlink /etc/nginx/sites-enabled/default

for file in $(ls nginx-conf); do
  ln -s $cwd/nginx-conf/$file /etc/nginx/sites-enabled/$file
done

systemctl reload nginx
