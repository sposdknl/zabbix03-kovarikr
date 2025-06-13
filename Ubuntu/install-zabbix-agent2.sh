#!/usr/bin/env bash

# Instalace net-tools (volitelné, pro diagnostiku)
sudo apt-get update
sudo apt-get install -y net-tools wget

# Stažení a instalace Zabbix repo pro verzi 7.0 LTS
wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_7.0-1+ubuntu22.04_all.deb
sudo dpkg -i zabbix-release_7.0-1+ubuntu22.04_all.deb

# Aktualizace repo
sudo apt-get update

# Instalace Zabbix Agent2
sudo apt-get install -y zabbix-agent2 zabbix-agent2-plugin-*

# Povolení služby
sudo systemctl enable zabbix-agent2

# Spuštění služby
sudo systemctl start zabbix-agent2
