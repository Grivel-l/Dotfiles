#!/bin/bash
DIR=~/.config/lockscreen
light -S 0
import -silent -window root png:- | mogrify -blur 0x8 png:- | composite -gravity South -geometry -20x1200 $DIR/foreground.png png:- png:- > $DIR/background
betterlockscreen -u $DIR/background
rm $DIR/background
light -S 100
betterlockscreen --lock &
