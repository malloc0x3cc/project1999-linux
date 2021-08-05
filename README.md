# project1999-linux

## Requirements
You have to install WINE, and run `winecfg` to make sure everything is working properly.

`wget` and `unzip` are also required by the patch script.

## Install EverQuest
Get a copy of EverQuest Titanium and install it. Copying the folder of an already installed EQ Titanium to your machine would also work.
The default game directory is `~/.wine/drive_c/Program Files (x86)/Sony/EverQuest`. If you want to install your game somewhere else make sure to edit the `GAMEPATH` variable in `patch_files.sh`.

## Patch files
Run `patch_files.sh`.

This will make all the modifications needed to play on Project1999 servers.

## Play
Run `launch_titanium.sh` to play. (Note that I removed the taskset part because it would make the game run really slow)

## Thanks to:
- Zallarenya for the launch script
