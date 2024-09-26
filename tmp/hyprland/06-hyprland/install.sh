#!/bin/bash

wk=$PWD
dir=$(dirname ${0})
cd $dir
if [ -d $dir/build ]; then
	rm -rf $dir/build
fi
mkdir -p $dir/build
noxwayconf=true
if [ "${1}" = "+xwayland" ]; then
	noxwayconf=false
fi
# cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DNO_SYSTEMD:STRING=true -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_INSTALL_LIBEXECDIR:PATH=/usr/lib -DNO_XWAYLAND:STRING=$noxwayconf -H./ -B./build -G Ninja && cmake --build ./build --config Release --target all -j20 && cmake --install build && make installheaders
PREFIX=/usr
make all -j20 && make install && make installheaders
cd $wk
