#!/bin/bash
echo "Running entrypoint script."

# Get minecraft jarfile
echo "Downloading classic server"
#wget -q https://launcher.mojang.com/mc/game/$VERSION/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar -P /home/minecraft/

wget -q http://s3.amazonaws.com/MinecraftDownload/minecraft_classic_server.zip -P /home/minecraft-zip/

echo "Unzipping classic server"
unzip /home/minecraft-zip/minecraft_classic_server.zip

cp /home/minecraft-zip/minecraft_classic_server/minecraft-server.jar /home/minecraft/server.jar

#echo "Accepting eula..."
#echo "# Generated via Docker on $(date)" > /minecraft-data/eula.txt
#echo "eula=$EULA" >> /minecraft-data/eula.txt
#if [ $? != 0 ]; then
#  echo "ERROR: unable to write eula to /data. Please make sure attached directory is writable by uid=${UID}"
#  exit 2
#fi

#exec "$@"
