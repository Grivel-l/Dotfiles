#!/bin/bash
killall -q custombar
while pgrep -u $UID -x custombar >/dev/null; do sleep 1; done
$HOME/.bin/custombar

