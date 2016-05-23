#!/usr/bin/env bash
cd /home/snwbot

mkdir /home/snwbot/temp
mkdir /home/snwbot/temp/config
cp ./bot/config/* /home/snwbot/temp/config

rm -r ./bot
mkdir ./bot

botVersion=''

until [ -n "$botVersion" ] && [ "$botVersion" != "null" ]
do
 botVersion=$(curl -s https://api.github.com/repos/Snekw/snw-bot/releases/latest | jq -r ".tag_name")

 if [ -n "$botVersion" ] && [ "$botVersion" != "null" ]
  then
    break
  else
    echo ${botVersion}
    echo 'Failed to get botVersion... Trying again in 5 second. Ctrl - c to cancel.'
    sleep 5
 fi
done

echo ${botVersion}

wget "https://github.com/Snekw/snw-bot/archive/${botVersion}.tar.gz" -O - | tar -zx -C /home/snwbot/bot

botVersion=${botVersion#v}
mv /home/snwbot/bot/snw-bot-${botVersion}/* /home/snwbot/bot

cp /home/snwbot/temp/config/* ./bot/config
rm -r /home/snwbot/temp

sleep 1

cd /home/snwbot/bot
npm i --production

start snwbot