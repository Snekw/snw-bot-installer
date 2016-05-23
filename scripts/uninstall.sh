#!/usr/bin/env bash
stop swnbot
rm -r /home/snwbot/bot
rm -r /home/snwbot/scripts
rm -r /home/snwbot/temp
rm -r /home/snwbot/.npm
rm /etc/init/snwbot.conf