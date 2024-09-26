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

make -j20
cd $wk
