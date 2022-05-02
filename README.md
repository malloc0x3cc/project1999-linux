# project1999-linux

## Dependencies
- `git`
- `wine`
- `fluidsynth` and `qsynth` for midi music (make sure to have a soundfront selected).
- `wget` and `unzip` for the patch script.

## Install EverQuest
Get a copy of EverQuest Titanium and install it. Copying the folder of an already installed EQ Titanium to your machine would also work.
The default game directory is `~/.wine/drive_c/Program Files (x86)/Sony/EverQuest`. If you want to install your game somewhere else make sure to edit the `GAMEPATH` variable in `patch_files.sh` before using it.

## Clone the repository
```sh
$ git clone https://github.com/malloc0x3cc/project1999-linux.git
```

## Patch files
Run `patch_files.sh`.

This will make all the modifications needed to play on Project1999 servers.

## Play
Run `launch_titanium.sh` to play. (Note that I removed the taskset part because it would make the game run really slow)

## Thanks to:
- Zallarenya for the launch script on p99's website
- eliashow for ideas from his install script
