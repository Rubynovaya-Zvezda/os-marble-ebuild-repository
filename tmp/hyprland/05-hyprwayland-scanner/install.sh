#!/bin/bash


wk=$PWD
dir=$(dirname ${0})
if [ -d $dir/build ]; then
	rm -rf $dir/build
fi
cd $dir
dep="pugixml"
emerge --noreplace $dep && cmake -DCMAKE_INSTALL_PREFIX=/usr -B build && cmake --build ./build --config Release --target all -j20 && cmake --install ./build
cd $wk
