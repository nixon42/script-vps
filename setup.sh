#!/bin/bash

# setup env
apt update && apt upgrade -y
apt install -y tmux vim curl python3-venv

# install sing-box
./setup-singbox.sh

# install nginx
./setup-nginx.sh
