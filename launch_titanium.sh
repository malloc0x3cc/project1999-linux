#!/bin/sh
export WINEPREFIX=$HOME/.wine/
GAMEPATH=~/.wine/drive_c/Program\ Files\ \(x86\)/Sony/EverQuest

echo -e "\n\033[0;36m _____           _         _   ___   ___ ___ ___ \033[0m"
echo -e   "\033[0;36m|  _  |___ ___  |_|___ ___| |_|_  | | . | . | . |\033[0m"
echo -e   "\033[0;36m|   __|  _| . | | | -_|  _|  _|_| |_|_  |_  |_  |\033[0m"
echo -e   "\033[0;36m|__|  |_| |___|_| |___|___|_| |_____|___|___|___|\033[0m"
echo -e   "\033[0;36m              |___|\033[0m"
echo "Please wait..."

echo "Launching QSynth..."
qsynth &
QSYNTH_PID=$!

echo "Launching p99-login-middlemand..."
./p99-login-middlemand/bin/p99-login-middlemand &
MIDDLEMAND_PID=$!

echo "Launching eqgame.exe..."
cd "$GAMEPATH"
wine "eqgame.exe" patchme 2>/dev/null

if [[ "$MIDDLEMAND_PID" != '' ]]; then
	kill -9 $MIDDLEMAND_PID
fi

if [[ "$QSYNTH_PID" != '' ]]; then
	kill -9 $QSYNTH_PID
fi
