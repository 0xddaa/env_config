#!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: ./libc_setup.sh [version]"
    exit 1
fi

# Donwload source
VERSION="$1"
SRCDIR="$HOME/libc/src"
BUILDDIR="$HOME/libc/build"
mkdir -p "$SRCDIR" 
wget -O- "http://ftp.gnu.org/gnu/glibc/glibc-${VERSION}.tar.gz" | tar zxvf - -C "$SRCDIR"

# x86-64 
mkdir -p "$BUILDDIR/glibc-${VERSION}"
cd $BUILDDIR/glibc-${VERSION}
CFLAGS="-g -g3 -ggdb -gdwarf-4 -Og -Wno-error=maybe-uninitialized" \
    CXXFLAGS="-g -g3 -ggdb -gdwarf-4 -Og -Wno-error=maybe-uninitialized" \
    "$SRCDIR/glibc-${VERSION}/configure" --prefix=/usr
make -j4

# x86 
mkdir -p "$BUILDDIR/glibc32-${VERSION}"
cd $BUILDDIR/glibc32-${VERSION}
CC="gcc -m32" CXX="g++ -m32" \
    CFLAGS="-g -g3 -ggdb -gdwarf-4 -Og -Wno-error=maybe-uninitialized" \
    CXXFLAGS="-g -g3 -ggdb -gdwarf-4 -Og -Wno-error=maybe-uninitialized" \
    "$SRCDIR/glibc-${VERSION}/configure" --prefix=/usr --host=i686-linux-gnu
make -j4
