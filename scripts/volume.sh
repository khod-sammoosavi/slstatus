#!/bin/bash

VOLOFF=$(amixer -D pulse get Master | grep Left: | sed 's/[][]//g' | awk '{print $6}')
VOL=$(amixer -D pulse get Master | grep Left: | sed 's/[][%]//g' | awk '{print $5}')

if [ "$VOL" -eq "0" ]; then
  icon=" "
elif [ "$VOL" -lt "20" ]; then
  icon=" "
elif [ "$VOL" -lt "40" ]; then
  icon=" "
elif [ "$VOL" -lt "60" ];then
  icon=" "
elif [ "$VOL" -ge "60" ];then
  icon=" "
fi

echo " $icon $VOL"
