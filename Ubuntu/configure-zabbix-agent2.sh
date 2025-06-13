#!/usr/bin/env bash
UNIQUE_HOSTNAME="ubuntu-$(uuidgen)"
SHORT_HOSTNAME=$(echo $UNIQUE_HOSTNAME | cut -d'-' -f1,2)

sudo cp /etc/zabbix/zabbix_agent2.conf /etc/zabbix/zabbix_agent2.conf.orig

sudo sed -i "s/^Hostname=.*/Hostname=$SHORT_HOSTNAME/" /etc/zabbix/zabbix_agent2.conf
sudo sed -i "s/^Server=.*/Server=192.168.1.2/" /etc/zabbix/zabbix_agent2.conf
sudo sed -i "s/^ServerActive=.*/ServerActive=192.168.1.2/" /etc/zabbix/zabbix_agent2.conf
sudo sed -i "s/^# HostMetadata=.*/HostMetadata=SPOS/" /etc/zabbix/zabbix_agent2.conf
sudo sed -i "s/^# Timeout=.*/Timeout=30/" /etc/zabbix/zabbix_agent2.conf

sudo systemctl restart zabbix-agent2
