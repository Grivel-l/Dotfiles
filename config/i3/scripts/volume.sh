#!/bin/bash
sink=`pactl list sinks short | grep "RUNNING"`
if [ -z "$sink" ];
then
    sink=`pactl list sinks short | grep "IDLE"`
fi;
sink=`echo $sink | head -c 1`
if [ "$1" = "up" ];
then
    pactl set-sink-volume $sink +2%
elif [ "$1" = "down" ];
then
    pactl set-sink-volume $sink -2%
elif [ "$1" = "mute" ];
then
    pactl set-sink-mute $sink toggle
else
    echo -e "Arg need to be one of those:\n\tup\n\tdown\n\tmute"
fi;
