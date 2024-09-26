#!/bin/bash
wk=$PWD
cd $(dirname ${0})
if [ -d build ]; then
	rm -rf build
fi
xwaydep=""
if [ "${1}" = "+xwayland" ]; then
	xwaydep="xwayland xcb-util-errors libxcb xcb-util-wm xcb-util-renderutil"
fi
dep="meson wayland wayland-protocols vulkan-loader libdrm libinput xkbcommon udev pixman seatd"
emerge --noreplace $dep $xwaydep && meson -Dprefix=/usr build && ninja -C build install
cd $wk
