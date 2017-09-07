# PocketDesk Lite!
## Run full desktop on PocketCHIP

Flash Desktop 4.4 GUI with Dip Support to your CHIP.

In the terminal type: 

`wget https://raw.githubusercontent.com/AllGray/PocketDesk/master/PocketDESKlite.sh`

`chmod +x install.sh`

`sudo ./install.sh`

Reboot with `sudo shutdown -r now`

You should now have a fully working desktop GUI on your PocketCHIP.
 
Note! The touchscreen calibration may not be super accurat, but it works.
 
To re-do this yourself type `xinput_calibrator` and run the calibration again.


# PocketDesk Full!
## Run full desktop AND PocketHome on PocketCHIP

Install:

Make sure you have internet and git installed

`sudo apt -y update && sudo apt -y install git`

`git clone https://github.com/AllGray/PocketDesk.git`

`sudo ./PocketDesk/PocketDesk.sh`



When the install is done, reboot and behold the glory of a unified system.

To change between the two desktops, just logout with the logout button, 

and choose the other desktop on the top right corner of the login screen

