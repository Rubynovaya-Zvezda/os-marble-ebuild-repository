#!/bin/bash
wk=$PWD
cd $(dirname ${0})
if [ -d build ]; then
	rm -rf build
fi
meson -Dprefix=/usr build && ninja -C build install
cd $wk
