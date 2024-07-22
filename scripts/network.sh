#!/bin/bash

hostname="${HOSTNAME:-${hostname:-$(hostname)}}"

network() {
wire="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
wifi="$(ip a | grep 'wlp.' | grep inet | wc -l)"

if [ $wire = 1 ]; then 
    echo ""
elif [ $wifi = 1 ]; then
    echo ""
else 
    echo "󰤭 Disconnect"
fi
}

echo " $(network) "
