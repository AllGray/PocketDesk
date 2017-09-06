# Wallpaper
wget -O /home/chip/.pocket-home/PocketDESK_wall.png https://raw.githubusercontent.com/AllGray/PocketDesk/master/PocketDESK_wall.png
sed -i -e 's#"background": "4D4D4D",#"background": "/home/chip/.pocket-home/PocketDESK_wall.png",#g'  ~/.pocket-home/config.json
