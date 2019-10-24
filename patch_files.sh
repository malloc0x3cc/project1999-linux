#!/bin/sh
echo -e "\033[0;36m _____           _         _   ___   ___ ___ ___ \033[0m"
echo -e "\033[0;36m|  _  |___ ___  |_|___ ___| |_|_  | | . | . | . |\033[0m"
echo -e "\033[0;36m|   __|  _| . | | | -_|  _|  _|_| |_|_  |_  |_  |\033[0m"
echo -e "\033[0;36m|__|  |_| |___|_| |___|___|_| |_____|___|___|___|\033[0m"
echo -e "\033[0;36m              |___|\033[0m\n"
wget http://www.project1999.com/files/P99Files50d.zip
unzip -o P99Files50d.zip -d ~/.wine/drive_c/Program\ Files/Sony/EverQuest
cd ~/.wine/drive_c/Program\ Files/Sony/EverQuest
mv Resources/loadscreen.JPG Resources/loadscreen.jpg
mv DSETUP.dll dsetup.dll
echo -e "\n\033[0;32mDONE !\033[0m"
