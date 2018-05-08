#!/bin/bash
DIR=~/.config/lockscreen
betterlockscreen -u <(import -silent -window root png:- | mogrify -blur 0x8 png:- | composite -gravity South -geometry -20x1200 $DIR/foreground.png png:- png:-)
rm -f $DIR/lockscreen.png
betterlockscreen --lock

