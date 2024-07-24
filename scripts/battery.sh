#!/bin/bash
bat() {
	batstat="$(cat /sys/class/power_supply/BAT0/status)"
	battery="$(cat /sys/class/power_supply/BAT0/capacity)"
    if [[ $batstat = 'Unknown' ]] || [[ $batstat = 'Charging' ]]; then
    batstat="󰂄"
    elif [[ $battery -ge 0 ]] && [[ $battery -le 19 ]]; then
    batstat="󰁺"
    elif [[ $battery -ge 20 ]] && [[ $battery -le 29 ]]; then
    batstat="󰁻"
    elif [[ $battery -ge 30 ]] && [[ $battery -le 39 ]]; then
    batstat="󰁼"
    elif [[ $battery -ge 40 ]] && [[ $battery -le 49 ]]; then
    batstat="󰁽"
    elif [[ $battery -ge 50 ]] && [[ $battery -le 59 ]]; then
    batstat="󰁾"
    elif [[ $battery -ge 60 ]] && [[ $battery -le 69 ]]; then
    batstat="󰁿"
    elif [[ $battery -ge 70 ]] && [[ $battery -le 79 ]]; then
    batstat="󰂀"
    elif [[ $battery -ge 80 ]] && [[ $battery -le 89 ]]; then
    batstat="󰂁"
    elif [[ $battery -ge 90 ]] && [[ $battery -le 100 ]]; then
    batstat="󰁹"
    fi

    echo "$batstat"
}

echo "$(bat)"
