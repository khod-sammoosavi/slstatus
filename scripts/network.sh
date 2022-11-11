#!/bin/bash

hostname="${HOSTNAME:-${hostname:-$(hostname)}}"

network() {
wire="$(ip a | grep 'eth0\|enp' | grep inet | wc -l)"
wifi="$(ip a | grep 'wlp.' | grep inet | wc -l)"

if [ $wire = 1 ]; then 
    echo " $(nmcli -t -f active,ssid dev wifi | grep "^yes:.*[a-zA-Z]" | cut -d ':' -f2)"
elif [ $wifi = 1 ]; then
    echo " $(nmcli -t -f active,ssid dev wifi | grep "^yes:.*[a-zA-Z]" | cut -d ':' -f2)"
else 
    echo "睊 Disconnect"
fi
}

vpn() {
    state="$(ip a | grep tun0 | grep inet | wc -l)"
    
if [ $state = 1 ]; then
    echo "ﱾ"
else
    echo ""
fi
}

echo "$(network) $(vpn)" 

case $BUTTON in
    1) notify-send "/bin/Networkmgr"
esac
