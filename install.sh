#!/usr/bin/env bash
mkdir /home/snwbot
mkdir /home/snwbot/scripts
cp -r ./scripts /home/snwbot
chmod +x /home/snwbot/scripts/installDeb.sh
chmod +x /home/snwbot/scripts/run.sh
chmod +x /home/snwbot/scripts/update.sh

useradd -m -c "Snw-bot" snwbot -s /user/sbin/nologin

sudo /home/snwbot/scripts/installDep.sh