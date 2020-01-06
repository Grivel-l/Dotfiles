#!/bin/bash
DIR=~/.config/lockscreen
light -S 0
betterlockscreen -u <(import -silent -window root png:- | mogrify -blur 0x8 png:- | composite -gravity South -geometry -20x1200 $DIR/foreground.png png:- png:-)
rm -f $DIR/lockscreen.png
light -S 100
betterlockscreen --lock &

