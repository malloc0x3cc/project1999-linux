#!/bin/bash
export WINEPREFIX=$HOME/.wine
GAMEPATH=$WINEPREFIX/drive_c/Program\ Files\ \(x86\)/Sony/EverQuest
P99FILE=P99FilesV60.zip

# Renaming files
mv -v "${GAMEPATH}/Resources/loadscreen.JPG" "${GAMEPATH}/Resources/loadscreen.jpg"
mv -v "${GAMEPATH}/DSETUP.dll" "${GAMEPATH}/dsetup.dll"

# Move post Velious musics in a new folder
mkdir -v "${GAMEPATH}/post-velious-musics"
mv -v "${GAMEPATH}/eqtheme.mp3 ${GAMEPATH}/combattheme1.mp3 ${GAMEPATH}/combattheme2.mp3 ${GAMEPATH}/deaththeme.mp3" -t "${GAMEPATH}/post-velious-musics/"

# Patching the game for Project1999
wget https://www.project1999.com/files/${P99FILE}
unzip -fov ${P99FILE} -d "${GAMEPATH}"
rm -vf ${P99FILE}

# compiling p99-login-middlemand and rewriting eqhost.txt to use it
git submodule init
git submodule update
make -C ./p99-login-middlemand
echo -e "[LoginServer]\nHost=localhost:5998" > ${GAMEPATH}/eqhost.txt

# Cool ascii-art because why not ?
echo -e "\n\033[0;36m _____           _         _   ___   ___ ___ ___ \033[0m"
echo -e   "\033[0;36m|  _  |___ ___  |_|___ ___| |_|_  | | . | . | . |\033[0m"
echo -e   "\033[0;36m|   __|  _| . | | | -_|  _|  _|_| |_|_  |_  |_  |\033[0m"
echo -e   "\033[0;36m|__|  |_| |___|_| |___|___|_| |_____|___|___|___|\033[0m"
echo -e   "\033[0;36m              |___|\033[0m"
echo -e "\n\033[0;32mDONE !\033[0m"
