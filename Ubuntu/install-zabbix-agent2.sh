#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y net-tools wget

wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-1+ubuntu22.04_all.deb

sudo dpkg -i zabbix-release_7.0-1+ubuntu22.04_all.deb
sudo apt-get update
sudo apt-get install -y zabbix-agent2 zabbix-agent2-plugin-*
sudo systemctl enable zabbix-agent2
sudo systemctl start zabbix-agent2
