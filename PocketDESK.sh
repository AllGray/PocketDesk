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

# Sync
sync

# Install PocketHome
./PocketDesk/Scripts/pockethome.sh

# Sync
sync

# Run PocketHome
timeout 10 pocket-home

# Sync
sync

# Configure Awesome
./PocketDesk/Scripts/awesome.sh

# Sync
sync

# Working Touchscreen
./PocketDesk/Scripts/touchscreen.sh

# Sync
sync

# Working Keyboard
./PocketDesk/Scripts/keyboard.sh

# Sync
sync

# Get a battery indicator
./PocketDesk/Scripts/battery.sh

# Sync
sync

# Nicely named sessions
./PocketDesk/Scripts/sessions.sh

# Sync
sync

# Logout button for PocketHome
./PocketDesk/Scripts/logout.sh

# Sync
sync

# Wallpaper Change
./PocketDesk/Scripts/wallpaper.sh

# Sync
sync
