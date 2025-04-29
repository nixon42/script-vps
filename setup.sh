#!/bin/bash

# setup env
apt update && apt upgrade -y
apt install -y tmux vim curl python3-venv

# enable bbr
modprobe tcp_bbr
sysctl net.core.default_qdisc=fq
sysctl net.ipv4.tcp_congestion_control=bbr

# install sing-box
./setup-singbox.sh

# install nginx
./setup-nginx.sh
