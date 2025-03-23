#!/usr/bin/env bash

MCDIR="/home/server"
MCJAR="$MCDIR/$JAR"
MCTEMP="/server_tmp"
MCARGS="-Xms$MC_RAM_XMS -Xmx$MC_RAM_XMX $MC_PRE_JAR_ARGS -jar $MCJAR $MC_POST_JAR_ARGS --nogui"     # -Xms<> -Xmx<> <args> -jar <jar> <args>

cd $MCDIR

echo "###############################################"
echo "#   Simple Server Starter - `date`   #"
echo "###############################################"
echo 
echo "Initializing..."

# Accepting EULA
[ "$MC_EULA" == "true" ] && echo "Setting EULA to true" && printf "eula=true" > $MCDIR/eula.txt

echo "Initialization finished!"
echo
echo "#################### Info #####################"
echo " MC_VERSION: $MC_VERSION"
echo " MC_EULA: $MC_EULA"
echo " MC_RAM_XMS: $MC_RAM_XMS"
echo " MC_RAM_XMX: $MC_RAM_XMX"
echo " MC_PRE_JAR_ARGS: $MC_PRE_JAR_ARGS"
echo " MC_POST_JAR_ARGS: $MC_POST_JAR_ARGS"
echo " MC_URL_ZIP_SERVER_FIILES: $MC_URL_ZIP_SERVER_FIILES"
echo "###############################################"
echo
echo "Start command: java $MCARGS"
echo "Starting Server..."
echo

# Starting the server
exec java $MCARGS