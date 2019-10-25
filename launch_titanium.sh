#!/bin/sh
export WINEPREFIX=$HOME/.wine/
cd ~/.wine/drive_c/Program\ Files\ \(x86\)/Sony/EverQuest/
wine eqgame.exe patchme 2>/dev/null
