#!/usr/bin/bash
export DISPLAY=:0
id=`xinput list --id-only "AT Translated Set 2 keyboard"`
if [ $1 = "enable" ]
then
  xinput reattach $id 3
elif [ $1 = "disable" ]
then
  xinput float $id
fi
