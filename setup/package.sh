#!/bin/bash
# test on ubuntu 20.04

if [ "$EUID" -ne 0 ]; then
    echo "please run as root."
    exit
fi

apt -y update
apt -y upgrade

# usual tool
apt -y install git nmap gdb gdbserver make

# complie & library
if [ "$(uname -i)" == "x86_64" ]; then
    apt -y install gcc g++ nasm libssl-dev libffi-dev gcc-multilib g++-multilib
elif [ "$(uname -i)" == "aarch64" ]; then
    apt -y install gcc g++ nasm libssl-dev libffi-dev
fi

# python package
apt -y install python-is-python3 python3-dev ipython3
wget -O- https://bootstrap.pypa.io/get-pip.py | python
pip install pwntools request pycrypto

# work environment
apt -y install mosh global silversearcher-ag autojump
pip install powerline-status
