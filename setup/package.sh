#!/bin/bash
# test on ubuntu 16.04 xenial

if [ "$EUID" -ne 0 ]; then
    echo "please run as root."
    exit
fi

apt-get -y update
apt-get -y upgrade

# usual tool
apt-get -y install git nmap gdb gdbserver make cmake

# complie & library
if [ "$(uname -i)" == "x86_64" ]; then
    apt-get -y install gcc g++ nasm libssl-dev libffi-dev gcc-multilib g++-multilib
    apt-get -y install libc-dev:i386 libssl-dev:i386 libc6-dev-i386 libffi-dev:i386 libc6-dbg libc6-dbg:i386
elif [ "$(uname -i)" == "aarch64" ]; then
    apt-get -y install gcc g++ nasm libssl-dev libffi-dev
fi

# python package
apt-get -y install python-dev ipython
wget -O- https://bootstrap.pypa.io/get-pip.py | python
pip install pwntools request pycrypto

# work environment
apt-get -y install mosh global silversearcher-ag autojump
pip install powerline-status
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
~/.vim/bundle/youcompleteme/install.py --clang-completer
