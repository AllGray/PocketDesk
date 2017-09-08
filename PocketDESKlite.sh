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

echo "+---------------------------------------------------------------------+"
echo "|                      Installing stuff for you                       |"
echo "|                   Go make yorself a cup of coffee                   |"
echo "|                                                                     |"
echo "|            PocketDESKlite was brought to you by AllGray!            |"
echo "+---------------------------------------------------------------------+"

# install dependencies
start_spinner [Installing_dependencies]
$MYDIR/Scriptslite/dependencieslite.sh &> /dev/null
stop_spinner $?

# Working Touchscreen
start_spinner [Fixing_touchscreen]
$MYDIR/Scriptslite/touchscreenlite.sh &> /dev/null
stop_spinner $?

# Working Keyboard
start_spinner [Fixing_keyboard]
$MYDIR/Scriptslite/keyboardlite.sh &> /dev/null
stop_spinner $?

# Get a battery indicator
start_spinner [Installing_battery_indicator]
$MYDIR/Scriptslite/batterylite.sh &> /dev/null
stop_spinner $?

# Finishing up
echo "+---------------------------------------------------------------------+"
echo "|                           Congratulation!                           |"
echo "|                        Your install is done!                        |"
echo "|                                                                     |"
echo "|                          Reboot and enjoy                           |"
echo "|                                                                     |"
echo "|            PocketDESKlite was brought to you by AllGray!            |"
echo "+---------------------------------------------------------------------+"
