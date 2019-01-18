#!/bin/bash

# Configure Awesome
awesome
touch  ~/.config/awesome/rc.lua  
wget -O ~/.config/awesome/rc.lua https://raw.githubusercontent.com/AllGray/PocketDesk/master/files/rc.lua
cp /usr/share/pocket-home/config.json ~/.pocket-home/config.json
sudo rm ~/.pocket-home/.passwd/passwd

sed -i -e 's/NoDisplay=true/NoDisplay=false/g'  /usr/share/xsessions/awesome.desktop

sync
