Wacht directory with git
========================

Das folgende Konzept ermöglicht es Ihnen, einen bestimmten Ordner zu überwachen und sämtliche Änderungen automatisch in einem Git-Repository zu protokollieren.


## Installation


Ein GitRepo einrichten wo der root User zugriff hat und sachen hoch puschen kann

```shell
mkdir /root/.testo/ && \
cp diskretion.sh /root/.testo/.diskretion.sh && \
cp cron.runtime.sh /etc/cron.hourly/runtime.sh && \
cd /root/.testo/ && \
git init  && \
git remote add https://<dein repo>
```

## Konfiguieren

Den Pfad einrichten den man beobachten möchte, Stellt man in der `/root/.testo/.diskretion.sh` ein in der Variable: `FOLDERTOWATCH`

```shell
vim /root/.testo/.diskretion.sh
```
