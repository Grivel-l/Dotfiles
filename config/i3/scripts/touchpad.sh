#!/bin/bash
device=$(xinput | grep Touchpad | cut -d "=" -f 2 | xargs | cut -d " " -f 1)
prop=$(xinput --list-props $device | grep -i "disable while typing enabled (" | cut -d "(" -f 2 | cut -d ")" -f 1)
xinput --set-prop $device $prop 0
