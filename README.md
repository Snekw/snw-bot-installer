## Snw-bot installer and updater scripts
# Not maintained or used anymore

Installer for [Snw-bot](https://github.com/Snekw/snw-bot)

### Installation
    
Script will install needed scripts and upstart service which is used for running the bot.
Bot creates user called `snwbot` and installs itself to `/home/snwbot` folder. Bot will be run as `snwbot`.

**Important!** You will need to manually add the line `snwbot ALL=(ALL) NOPASSWOD: ALL` to your `sudo visudo`.

Run  

    sudo wget "https://github.com/snekw/snw-bot-installer/archive/master.zip" -O master.zip; 
    sudo unzip master.zip; 
    sudo rm master.zip;
    sudo cd snw-bot-installer-master;
    sudo chmod +x ./install.sh;
    sudo ./install.sh;
