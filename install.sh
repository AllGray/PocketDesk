#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Clear the screen
reset

# install dependencies
apt -y upgrade
apt -y install git xinput-calibrator

# Touchscreen
mv /etc/X11/xorg.conf /etc/X11/xorg.conf.backup
wget -O /etc/X11/xorg.conf https://raw.githubusercontent.com/AllGray/PocketDesk/master/xorg.conf

# Keyboard
wget -O /home/chip/.Xmodmap https://raw.githubusercontent.com/AllGray/PocketDesk/master/.Xmodmap
wget -O /home/chip/.xinitrc https://raw.githubusercontent.com/AllGray/PocketDesk/master/.xinitrc

# Battery
git clone https://github.com/editkid/chip-battery-status.git
cd chip-battery-status
sudo ./install.sh
