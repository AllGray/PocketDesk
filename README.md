# PocketDesk
## Run full desktop on PocketCHIP

Flash Desktop 4.4 GUI with Dip Support to your CHIP.

SSH/USB-serial into the device and give it interne with `sudo nmtui`

In the terminal type: 

`wget https://raw.githubusercontent.com/AllGray/PocketDesk/master/install.sh`

`chmod +x install.sh`

`sudo ./install.sh`

Reboot with `sudo shutdown -r now`

You should now have a fully working desktop GUI on your PocketCHIP.
 
Note! The touchscreen calibration may not be super accurat, but it works.
 
To re-do this yourself type `xinput_calibrator` and run the calibration again.
