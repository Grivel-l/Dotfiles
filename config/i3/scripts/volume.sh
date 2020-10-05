#!/bin/bash
priority=`pactl list sinks | grep priority | cut -d ":" -f 3 | grep -v "not available" | cut -d "," -f 1 | cut -d ")" -f 1 | xargs`
lowest=`echo $priority | cut -d " " -f 1`
for nbr in $priority;
do
  if [ $nbr -lt $lowest ];
  then
    lowest=$nbr;
  fi
done
sink=`pactl list sinks | grep -e "Sink" -e "priority: $lowest" | grep -B 1 "priority: $lowest" | grep "Sink #" | cut -d "#" -f 2`
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
