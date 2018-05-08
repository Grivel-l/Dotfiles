#!/bin/bash
DIR=~/.config/lockscreen
rm -f $DIR/lockscreen.png
flameshot full -p $DIR
sleep 1
convert -blur 0x8 $DIR/lockscreen.png $DIR/lockscreen2.png
convert -composite $DIR/lockscreen2.png $DIR/foreground.png -gravity South -geometry -20x1200 $DIR/lockscreen.png
rm -f $DIR/lockscreen2.png
betterlockscreen -u $DIR/lockscreen.png
betterlockscreen --lock

