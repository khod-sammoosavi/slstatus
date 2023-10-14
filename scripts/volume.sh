#!/bin/bash

VOLOFF=$(amixer -D pulse get Master | grep Left: | sed 's/[][]//g' | awk '{print $6}')
VOL=$(amixer -D pulse get Master | grep Left: | sed 's/[][%]//g' | awk '{print $5}')

if [ "$VOL" -eq "0" ]; then
  icon="婢"
elif [ "$VOL" -lt "15" ]; then
  icon=""
elif [ "$VOL" -lt "35" ]; then
  icon=""
elif [ "$VOL" -lt "65" ];then
  icon="󰕾"
elif [ "$VOL" -ge "65" ];then
  icon=""
fi

echo " $icon $VOL"
