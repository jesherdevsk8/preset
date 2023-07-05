#!/bin/sh

LVDS=$(xrandr | grep LVDS-* | cut -d ' ' -f 1)
HDMI=$(xrandr | grep HDMI-* | cut -d ' ' -f 1)

sleep 1s; xrandr --output $HDMI --mode 1366x768 --pos 0x0 --rotate normal --output $LVDS --mode 1366x768 --pos 1366x0 --rotate normal
