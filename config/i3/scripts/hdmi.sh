#!/bin/bash
isActive=$(xrandr --listactivemonitors | grep "HDMI")
if [ -n "$isActive" ]; then
    xrandr --output "HDMI-1" --off
else
    xrandr --output "HDMI-1" --auto --right-of "eDP-1"
    killall compton
    compton --config $HOME/.config/compton.conf &
fi

