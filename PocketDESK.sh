#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

MYDIR=`dirname $0`
source "$MYDIR/Scripts/spinner.sh"

# Clear the screen
reset

echo "+---------------------------------------------------------------+"
echo "|                   Installing stuff for you                    |"
echo "|                Go make yorself a cup of coffee                |"
echo "|                                                               |"
echo "|           PocketDESK was brought to you by AllGray!           |"
echo "|        (and subsequently forked/mangled by ceemonkey)         |"
echo "+---------------------------------------------------------------+"



# install dependencies
start_spinner [Installing_dependencies]
$MYDIR/Scripts/dependencies.sh &> /dev/null
stop_spinner $?

# Install PocketHome
start_spinner [Installing_PocketHome]
$MYDIR/Scripts/pockethome.sh &> /dev/null
stop_spinner $?

# Working Touchscreen
start_spinner [Fixing_touchscreen]
$MYDIR/Scripts/touchscreen.sh &> /dev/null
stop_spinner $?

# Working Keyboard
start_spinner [Fixing_keyboard]
$MYDIR/Scripts/keyboard.sh &> /dev/null
stop_spinner $?

# Get a battery indicator
start_spinner [Installing_battery_indicator]
$MYDIR/Scripts/battery.sh &> /dev/null
stop_spinner $?

# Nicely named sessions
start_spinner [Correcting_names]
$MYDIR/Scripts/sessions.sh &> /dev/null
stop_spinner $?

# Setting Hostname
start_spinner [Changing_Hostname]
$MYDIR/Scripts/hostname.sh &> /dev/null
stop_spinner $?

# Wallpaper Change
start_spinner [Selling_out]
$MYDIR/Scripts/wallpaper.sh &> /dev/null
stop_spinner $?


# Finishing up
echo "+---------------------------------------------------------------+"
echo "|                        Congratulations!                       |"
echo "|                     Your install is done!                     |"
echo "|                                                               |"
echo "|                       Reboot and enjoy                        |"
echo "|                                                               |"
echo "|           PocketDESK was brought to you by AllGray!           |"
echo "|        (and subsequently forked/mangled by ceemonkey)         |"
echo "+---------------------------------------------------------------+"
