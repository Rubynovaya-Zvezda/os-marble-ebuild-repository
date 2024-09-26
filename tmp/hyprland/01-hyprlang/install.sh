#!/bin/bash


wk=$PWD
dir=$(dirname ${0})
if [ -d $dir/build ]; then
	rm -rf $dir/build
fi
cd $dir
cmake --no-warn-unused-cli -DCMAKE_BUILD_TYPE:STRING=Release -DCMAKE_INSTALL_PREFIX:PATH=/usr -S . -B ./build && cmake --build ./build --config Release --target all -j20 && cmake --install ./build
cd $wk
