#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Clear the screen
resethttps://raw.githubusercontent.com/AllGray/PocketDesk/master/.xinitrc /home/chip

# Start info

apt -y upgrade
apt -y install git xinput-calibrator

mv /etc/X11/xorg.conf /etc/X11/xorg.conf.backup
wget https://raw.githubusercontent.com/AllGray/PocketDesk/master/xorg.conf /etc/X11/xorg.conf

wget https://raw.githubusercontent.com/AllGray/PocketDesk/master/.Xmodmap /home/chip

wget https://raw.githubusercontent.com/AllGray/PocketDesk/master/.xinitrc /home/chip


git clone https://github.com/editkid/chip-battery-status.git
cd chip-battery-status
sudo ./install.sh
