#!/bin/bash

# get current working directory
cwd=$(pwd)

# install sing-box
bash <(curl -fsSL https://sing-box.app/deb-install.sh)
rm -rf /etc/sing-box/config.json
ln -s $cwd/sing-box/config.json /etc/sing-box/config.json

systemctl enable sing-box
systemctl start sing-box
systemctl restart sing-box