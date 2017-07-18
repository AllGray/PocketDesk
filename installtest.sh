#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Clear the screen
reset

# install dependencies
apt-get -y update
apt-get -y install git xinput-calibrator xfce4-genmon-plugin awesome apt-transport-https

# PocketHOME
echo "deb https://o-marshmallow.github.io/PocketCHIP-pocket-home/archive/ jessie main" | sudo tee /etc/apt/sources.list.d/marshmallow-pocket-chip-home.list
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 584F7F9F
echo -e "Package: pocket-home\nPin: version *\nPin-Priority: 1050" | sudo tee /etc/apt/preferences.d/unpin-pocket-home.pref
apt-get update
apt-get install pocket-home

wget -O ~/.config/awesome/rc.lua https://raw.githubusercontent.com/AllGray/PocketDesk/master/rc.lua
cp /usr/share/pocket-home/config.json ~/.pocket-home/config.json
sudo rm ~/.pocket-home/.passwd/passwd

Sync

# Touchscreen
xinput_calibrator
mv /etc/X11/xorg.conf /etc/X11/xorg.conf.backup
wget -O /etc/X11/xorg.conf https://raw.githubusercontent.com/AllGray/PocketDesk/master/xorg.conf

# Keyboard
wget -O /home/chip/.Xmodmap https://raw.githubusercontent.com/AllGray/PocketDesk/master/.Xmodmap
wget -O /home/chip/.xinitrc https://raw.githubusercontent.com/AllGray/PocketDesk/master/.xinitrc

# Battery
git clone https://github.com/editkid/chip-battery-status.git
cd chip-battery-status
./install.sh
wget -O /home/chip/.config/xfce4/panel/genmon-7.rc https://raw.githubusercontent.com/AllGray/PocketDesk/master/genmon-7.rc
