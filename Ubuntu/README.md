## 🖧 Síťové nastavení

| Síťový adaptér | Typ            | IP adresa      | Popis                       |
|----------------|----------------|----------------|-----------------------------|
| Adapter 1      | NAT            | DHCP           | Pro přístup k internetu     |
| Adapter 2      | Interní síť    | 192.168.1.3    | Pro komunikaci se Zabbixem  |

---

## Automatická registrace

Virtuální stroj se po spuštění zaregistruje do Zabbix Appliance pomocí **HostMetadata=SPOS**.

**registrace:**
- **Hostname**: `kovarik-zabbix`
- **Host group**: `SPOS-Group`
- **Template**: `Template OS Linux by Zabbix agent`
- **Tag**: `env=SPOS`
- **Zabbix Server IP**: `192.168.1.2`

---

## skripty

| Skript                      | Popis                                                                 |
|-----------------------------|-----------------------------------------------------------------------|
| `install-zabbix-agent2.sh`  | Instalace Zabbix agent2 7.0 LTS a pluginů                             |
| `configure-zabbix-agent2.sh`| Nastavení hostname, metadata, IP Zabbix serveru a restart služby     |

---
