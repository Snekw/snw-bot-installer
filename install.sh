#!/usr/bin/env bash
mkdir /home/snwbot
mkdir /home/snwbot/scripts
mkdir /home/snwbot/bot
cp ./snwbot.conf /etc/init
cp -r ./scripts /home/snwbot
cd /home/snwbot/scripts
chmod +x ./installDep.sh
chmod +x ./run.sh
chmod +x ./update.sh
chmod +x ./uninstall.sh

useradd -m -c "Snw-bot" snwbot -s /user/sbin/nologin

sudo ./installDep.sh

sudo ./update.sh