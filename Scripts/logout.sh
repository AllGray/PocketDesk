# Pocket Logout
sed -i -e 's/"name": "Get Help",/"name": "Change to Desktop",/g'  /home/chip/.pocket-home/config.json
sed -i -e 's#surf /usr/share/pocketchip-localdoc/index.html#pkill -KILL -u chip#g'  /home/chip/.pocket-home/config.json
