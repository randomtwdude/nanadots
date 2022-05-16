#!/bin/bash

volume=$(amixer -D pulse sget Master | tail -1 | awk -F'[][]' '{print $2}' | sed 's/%//g')

if [[ "$volume" -eq "0" ]]; then
    icon="$HOME/.config/dunst/scripts/volume-mute.svg"
elif [[ "$volume" -lt "100" ]]; then
    icon="$HOME/.config/dunst/scripts/volume-normal.svg"
else
    icon="$HOME/.config/dunst/scripts/volume-max.svg"
fi

dunstify -a "volume" -i "$icon" -r 3456 -h int:value:"$volume" "Volume: ${volume}%"
