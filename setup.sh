#!/bin/bash

# setup env
apt update && apt upgrade -y
apt install -y tmux vim curl python-virtualenv
useradd -m -g nixon -s /bin/bash nixon
passwd nixon

# install sing-box
./setup-singbox.sh

# install nginx
./setup-nginx.sh
