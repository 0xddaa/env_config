#!/bin/bash

RCFILES="bashrc cshrc gdbinit gitconfig screenrc vimrc tmux.conf"

for f in $RCFILES; do
    DEST=~/.$f
    echo "[*] link $DEST ..."
    [ -f "$DEST" ] && rm -f "$DEST"
    ln -s ~/env_config/config/$f "$DEST"
done

echo "[*] link ipythonrc.py ..."
echo exit | ipython3 > /dev/null # init ipython folder
DEST=~/.ipython/profile_default/startup/ipythonrc.py
[ -f "$DEST" ] && rm -f "$DEST"
ln -s ~/env_config/config/ipythonrc.py "$DEST"

echo "[*] link snippets ..."
DEST=~/.vim/UltiSnips
[ -f "$DEST" ] && rm -f "$DEST"
mkdir -p ~/.vim && ln -s ~/env_config/snippets/ ~/.vim/UltiSnips

echo "[*] link powerline.conf ..."
DIR=~/.config/powerline/
DEST="$DIR/config.json"
! [ -d "$DIR" ] && mkdir -p "$DIR"
[ -f "$DEST" ] && rm -f "$DEST"
ln -s ~/env_config/config/powerline.conf "$DEST"
