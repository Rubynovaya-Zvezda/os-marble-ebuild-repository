#!/bin/bash

wk=$PWD
cd $(dirname ${0})
if [ -d build ]; then
	rm -rf build
fi
mkdir -p build
dep="libdrm pipewire sdbus-c++ wayland wayland-protocols"
emerge --noreplace $dep && cmake -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -B./build && cmake --build ./build --config Release --target all -j20 && cmake --install build
cd $wk
