#!/bin/bash
# test on ubuntu 14.04 trusty

apt-get -y update
apt-get -y upgrade

# SA tool
apt-get -y install git nmap

# complie & library
apt-get -y install gcc g++ nasm libc-dev:i386 libssl-dev libssl-dev:i386 gcc-multilib g++-multilib libc6-dev-i386

# python package
apt-get -y install python-dev
wget -O- https://bootstrap.pypa.io/get-pip.py | python
pip install pwntools
pip install requests 
