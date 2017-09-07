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






# PocketDESK - Unify your PocketCHIP

## All your CHIPs in one place; it's a party!

It's this time of the year. The time where i create something awesome, and this time i outdid myself


----------

## Introducing _**PocketDESK**_

What is _**PocketDESK**_?.

PocketDESK is a way to run the normal _Desktop GUI_ on your _PocketCHIP_ without any hassle. 

_Does the keyboard work?_  **Yes sir**

_Does the touchscreen work?_  **Yes sir**

_Can i run this next to the normal PocketHome?_ **YES SIR**


The install is super simple.

Just run

    sudo apt update && sudo apt install git

    git clone https://github.com/AllGray/PocketDesk.git

    sudo ./PocketDesk/PocketDesk.sh

That is it. Do a reboot and you are good to go.



----------

## How to use!


The point of **_PocketDESK_** is that you can switch between the normal **Desktop GUI** and **PocketHome**

To do this simply log out of whatever you booted into

**PocketHome:** (_See.. I put a button there for you'all_)

https://github.com/AllGray/AllGray_Private/blob/master/gif/PocketHome_logout.gif


**Desktop:** 

https://github.com/AllGray/AllGray_Private/blob/master/gif/Desktop_logout.gif



In the login manager you click and choose the desired **GUI** version:

https://github.com/AllGray/AllGray_Private/blob/master/gif/change_wm.gif



----------



If you run into any problems, feel free ask.



----------

_**Credits:**_ 

_Thank you to @Demonswaltz for testing_

_Thank you to @marshmallow for giving me pointers on PocketHome and creating a better PocketHome_

_And Thanks to the [Slack Communiy](https://slofile.com/slack/chipster)   <- Signup link._


