#!/bin/bash
############################
#TO DO
############################
#edit wifi connections
#edit rc.local to run IP Script
#VLC
#Unified remote
#Static IP
#Transmission

#Change Password
echo "############################"
echo "Please enter a new password"
echo "############################"
passwd

#Update and Upgrade
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

#API Keys
mkdir /home/pi/Scripts/APIConfigs

#Clone My Github Repos
mkdir /home/pi/Scripts/
mkdir /home/pi/Scripts/github
cd /home/pi/Scripts/github
USER=mattsage;PAGE=1; curl "https://api.github.com/users/$USER/repos?page=$PAGE&per_page=100" | grep -e 'git_url*' | cut -d \" -f 4 | xargs -L1 git clone
cd

#SAMBA
sudo apt-get install samba samba-common-bin

#wicd - WIFI GUI
sudo apt-get install wicd

sudo apt-get install pimoroni
#Button Shim
#Blinkt

#Blink(1) USB
#https://github.com/todbot/blink1/wiki/Raspberry-Pi-and-blink(1)
sudo apt-get install libusb-1.0-0-dev
git clone https://github.com/todbot/blink1.git
cd blink1/commandline
sudo make
sudo ./blink1-tool --on
cd

#GoPro Python - https://github.com/KonradIT/gopro-py-api
pip install goprocam

##################################
#Software
##################################

#OpenVPN

#PIA

#Delugue/transmission


#PiShrink
wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
chmod +x pishrink.sh
sudo mv pishrink.sh /usr/local/bin

#Arduino
sudo apt-get install -y arduino

#GParted
sudo apt-get install -y gparted

#Autopsy and Sleuthkit
sudo apt-get install -y sleuthkit
sudo apt-get install -y autopsy

#Pushbullet
#pip install git+https://github.com/Azelphur/pyPushBullet.git
pip install pushbullet.py

#Uptimed (Uprecords)
sudo apt-get install -y uptimed

#X-clip Command line clipboard
sudo apt-get install xclip

#Fail2Ban
sudo apt-get install fail2ban

#pywu
sudo pip-3.2 install pywu

#Dashing

#Youtube-Dl - https://github.com/rg3/youtube-dl
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

#get-iplayer - https://github.com/get-iplayer/get_iplayer
wget http://packages.hedgerows.org.uk/scripts/install.sh -O - | sh

