#!/bin/bash

# Calls Installers Sequentially

wk=$PWD
cd $(dirname ${0})
for x in $(ls ./ | sort)
do
	if [ $x = "install.sh" ]; then
		continue
	fi
	$x/install.sh
done
cd $wk
