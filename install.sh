#!/usr/bin/env bash
mkdir /home/snwbot
mkdir /home/snwbot/scripts
cp -r ./scripts /home/snwbot
cd /home/snwbot/scripts
chmod +x ./installDeb.sh
chmod +x ./run.sh
chmod +x ./update.sh

useradd -m -c "Snw-bot" snwbot -s /user/sbin/nologin

sudo ./installDep.sh