# Sessions
sudo mv /usr/share/xsessions/awesome.desktop /usr/share/xsessions/awesome.desktop.backup
sudo mv /usr/share/xsessions/lightdm-xsession.desktop /usr/share/xsessions/lightdm-xsession.desktop.backup
sed -i -e 's/Name=Pocket-wm/Name=PocketHome/g'  /usr/share/xsessions/pocket-wm.desktop
sed -i -e 's/Name=Xfce Session/Name=Desktop/g'  /usr/share/xsessions/xfce.desktop
