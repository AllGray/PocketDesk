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
apt-get -y install git xinput-calibrator xfce4-genmon-plugin

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

# Clean up
rm -r install.sh
rm -r chip-battery-status
