#!/bin/bash

wk=$PWD
cd $(dirname ${0})
if [ -d build ]; then
	rm -rf build
fi
mkdir -p build
dep="x11-libs/pango x11-libs/cairo file libglvnd libwebp"
emerge --noreplace $dep && cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build && cmake --build ./build --config Release --target all -j20 && cmake --install build
cd $wk
