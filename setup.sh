#!/bin/bash
PROTON_GE_VAR=wine-lutris
PROTON_GE_VER=GE-Proton8-21
PROTON_GE_ARCH=x86_64
FILE_NAME=$PROTON_GE_VAR-$PROTON_GE_VER-$PROTON_GE_ARCH

wget https://github.com/GloriousEggroll/wine-ge-custom/releases/download/$PROTON_GE_VER/$FILE_NAME.tar.xz
tar -xvf $FILE_NAME.tar.xz
mv lutris-$PROTON_GE_VER-$PROTON_GE_ARCH ./proton
steamcmd +force_install_dir $PWD/server +login anonymous +app_update 2430930 +quit
