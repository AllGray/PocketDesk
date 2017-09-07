#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Clear the screen
reset
source "/home/chip/PocketDesk/Scripts/spinner.sh"

# install dependencies
start_spinner [Installing_dependencies]
./PocketDesk/Scripts/dependencies.sh &> /dev/null
stop_spinner $?

# Install PocketHome
start_spinner [Installing_PocketHome]
./PocketDesk/Scripts/pockethome.sh &> /dev/null
stop_spinner $?

# Working Touchscreen
start_spinner [Fixing_touchscreen]
./PocketDesk/Scripts/touchscreen.sh &> /dev/null
stop_spinner $?

# Working Keyboard
start_spinner [Fixing_keyboard]
./PocketDesk/Scripts/keyboard.sh &> /dev/null
stop_spinner $?

# Get a battery indicator
start_spinner [Installing_battery_indicator]
./PocketDesk/Scripts/battery.sh &> /dev/null
stop_spinner $?

# Nicely named sessions
start_spinner [Correcting_names]
./PocketDesk/Scripts/sessions.sh &> /dev/null
stop_spinner $?

# Wallpaper Change
start_spinner [Selling_out]
./PocketDesk/Scripts/wallpaper.sh &> /dev/null
stop_spinner $?


# Finishing up
echo "+---------------------------------------------------------------------+"
echo "|                           Congratulation!                           |"
echo "|                        Your install is done!                        |"
echo "|                                                                     |"
echo "|                          Reboot and enjoy                           |"
echo "|                                                                     |"
echo "|              PocketDESK was brought to you by AllGray!              |"
echo "+---------------------------------------------------------------------+"
