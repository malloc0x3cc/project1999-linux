#!/bin/sh
GAMEPATH=~/.wine/drive_c/Program\ Files\ \(x86\)/Sony/EverQuest
P99FILE=P99Files52.zip

mv -v "${GAMEPATH}/Resources/loadscreen.JPG" "${GAMEPATH}/Resources/loadscreen.jpg"
mv -v "${GAMEPATH}/DSETUP.dll" "${GAMEPATH}/dsetup.dll"

wget https://www.project1999.com/files/${P99FILE}
unzip -ou ${P99FILE} -d "${GAMEPATH}"
rm -vf ${P99FILE}

echo -e "\n\033[0;36m _____           _         _   ___   ___ ___ ___ \033[0m"
echo -e "\033[0;36m|  _  |___ ___  |_|___ ___| |_|_  | | . | . | . |\033[0m"
echo -e "\033[0;36m|   __|  _| . | | | -_|  _|  _|_| |_|_  |_  |_  |\033[0m"
echo -e "\033[0;36m|__|  |_| |___|_| |___|___|_| |_____|___|___|___|\033[0m"
echo -e "\033[0;36m              |___|\033[0m"
echo -e "\n\033[0;32mDONE !\033[0m"
