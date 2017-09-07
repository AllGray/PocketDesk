#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Clear the screen
reset

# install dependencies
./PocketDesk/Scripts/dependencies.sh

# Install PocketHome
./PocketDesk/Scripts/pockethome.sh

# Configure Awesome
# Testing without this part!
# ./PocketDesk/Scripts/awesome.sh

# Working Touchscreen
./PocketDesk/Scripts/touchscreen.sh

# Working Keyboard
./PocketDesk/Scripts/keyboard.sh

# Get a battery indicator
./PocketDesk/Scripts/battery.sh

# Nicely named sessions
./PocketDesk/Scripts/sessions.sh

# Logout button for PocketHome
# Not needed anymore! 
#./PocketDesk/Scripts/logout.sh

# Wallpaper Change
./PocketDesk/Scripts/wallpaper.sh


# Finishing up (banner spacing works assuming hostname: owncloud)
echo "+---------------------------------------------------------------------+"
echo "|                           Congratulation!                           |"
echo "|                        Your install is done!                        |"
echo "|                                                                     |"
echo "|                          Reboot and enjoy                           |"
echo "|                                                                     |"
echo "|              PocketDESK was brought to you by AllGray!              |"
echo "+---------------------------------------------------------------------+"
