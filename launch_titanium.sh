#!/bin/sh
# if you don't have the script's cwd set, you get XML errors
export WINEPREFIX=$HOME/.wine/
cd ~/.wine/drive_c/Program\ Files\ \(x86\)/Sony/EverQuest/
# Bind to one core of the processor and launch.
# The client will spew a lot of errors, especially every time
# you target a mob, hence the stdout/stderr redirect.
# You probably want to leave off the 2>/dev/null until you're satisfied
# everything is working.
taskset -c 0 padsp wine eqgame.exe patchme 2>/dev/null
