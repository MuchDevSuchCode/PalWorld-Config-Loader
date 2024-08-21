#!/bin/bash
FILE=/home/palworld/PalWorldSettings.ini
if [ -f "$FILE" ]; then
    echo "$FILE exists."
	echo "Stopping Palworld Service..."
	systemctl stop palworld
	echo "Backing up running config..."
	cp /home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini /home/palworld/palbak/$(date -d "today" +"%Y%m%d%H%M")-PalWorldSettings.bak
	echo "Updating running config file..."
	mv /home/palworld/PalWorldSettings.ini /home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/
	echo "Chaning config ownership..."
	chown steam:steam /home/steam/Steam/steamapps/common/PalServer/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
	echo "Restarting the Palworld Service..."
	systemctl start palworld
else 
    echo "$FILE does not exist. Doing nothing..."
fi

