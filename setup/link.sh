#!/bin/bash

echo "[*] Change directory to ~/env_config/config..."
cd ~/env_config/config 2>&1 > /dev/null
RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc"

for f in $RCFILES; do
    DEST=~/.$f
	[ -f "$DEST" ] && rm -f "$DEST"
	ln -s ~/env_config/config/$f "$DEST"
done
echo "[*] Change back"
cd - 2>&1 > /dev/null
