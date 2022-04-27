#!/bin/sh
export WINEPREFIX=$HOME/.wine/
qsynth &
./p99-login-middlemand/bin/p99-login-middlemand &
MIDDLEMAND_PID=$!
cd ~/.wine/drive_c/Program\ Files\ \(x86\)/Sony/EverQuest/
wine eqgame.exe patchme 2>/dev/null
if [[ "$MIDDLEMAND_PID" != '' ]]; then
	kill -9 $MIDDLEMAND_PID
fi
