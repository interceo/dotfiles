#!/bin/bash

MONITOR="DP-2"
CURRENT_SCALE=$(swaymsg -t get_outputs | jq -r ".[] | select(.name==\"$MONITOR\") | .scale")

if [[ "$CURRENT_SCALE" == "1.5" ]]; then
    swaymsg "output $MONITOR resolution 3840x2160@160Hz scale 1"
else
    swaymsg "output $MONITOR resolution 3840x2160@160Hz scale 1.5"
fi
