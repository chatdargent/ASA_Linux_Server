#!/bin/bash
INSTANCE_NAME=$1
MAP=$2
PORT=$3
QUERY_PORT=$4
OPTIONS=$5

mkdir $INSTANCE_NAME
cd $INSTANCE_NAME 
mkdir saves
echo "Need super user permissions to change file permissions, this is the only time that is required or used: "
sudo chown 1010:$(id -g) saves
mkdir config
sudo chown 1010:$(id -g) config

echo 'INSTANCE_NAME='$INSTANCE_NAME > .env
echo 'PORT='$PORT >> .env
echo 'QUERY_PORT='$QUERY_PORT >> .env
echo 'UID='$(id -u) >> .env
echo 'GID='$(id -g) >> .env

echo '#!/bin/bash' > start.sh
echo 'sleep 2' >> start.sh
echo "bash xvfb-run -a /proton/bin/wine /server/ShooterGame/Binaries/Win64/ArkAscendedServer.exe $MAP?listen?Port=$PORT?QueryPort=$QUERY_PORT $OPTIONS" >> start.sh
chmod +x start.sh

cp ../base_docker-compose.yml docker-compose.yml
