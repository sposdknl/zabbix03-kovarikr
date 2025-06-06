### Co je v projektu

- **Vagrantfile** – definuje virtuální stroj s Ubuntu 22.04, nastavuje druhou síťovou kartu s pevnou IP adresou 192.168.1.3 na interní síti VirtualBox.
- **install-zabbix-agent2.sh** – skript pro instalaci Zabbix Agent2 7.0 LTS a jeho závislostí.
- **configure-zabbix-agent2.sh** – skript pro konfiguraci Zabbix Agent2, který:
  - nastaví unikátní hostname,
  - upraví konfiguraci pro auto-registraci s HostMetadata=SPOS,
  - nakonfiguruje IP adresy vašeho Zabbix serveru,
  - restartuje službu agenta.

### Požadavky a nastavení

- Funkční Zabbix server (Appliance) s interní sítí 192.168.1.0/24.
- Ve Zabbix GUI vytvořená **Autoregistration action** s podmínkou `HostMetadata=SPOS`, která přiřazuje hostgroupu, tagy a šablony.
- Ve stejném adresáři jako Vagrantfile musí být skripty `install-zabbix-agent2.sh` a `configure-zabbix-agent2.sh`.

### Použití

1. Zkontroluj, že máš skripty `install-zabbix-agent2.sh` a `configure-zabbix-agent2.sh` v adresáři vedle Vagrantfile.
2. Spusť příkaz `vagrant up` – tím se vytvoří VM, nastaví se síť a spustí provisioning skriptů.
3. Po startu VM se Zabbix Agent2 nainstaluje, nakonfiguruje a automaticky se zaregistruje na Zabbix server.
4. Přihlas se do Zabbix GUI a ověř, že nový host se unikátním jménem je zaregistrován.
5. Udělej screenshot registrovaného hosta a vlož ho do složky `Images`.

### Další informace

- Vagrant používá VirtualBox provider s 2 GB RAM a 2 CPU.
- Druhá síťová karta používá interní síť VirtualBox s IP 192.168.1.3.
- Port forwarding pro SSH je nastaven na host port 2202.
- HostMetadata pro auto-registraci je pevně nastaveno na `SPOS`.