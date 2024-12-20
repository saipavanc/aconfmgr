#!/usr/bin/env bash
#panel_wid=$(xdo id -a plasmashell)

panel_wid=$(xdotool search --class "plasmashell" | while read id; do     
if xprop -id $id | grep -q "_KDE_NET_WM_WINDOW_TYPE_OVERRIDE"; then         
	echo "$id";         
	break;     
fi; 
done)

bspc subscribe node_state | while read -r _ _ wid format state ; do
    #echo $wid $state
    if [[ $state = "fullscreen on" ]]; then
	    echo $wid $state $panel_wid
	    xdo below -t $wid $panel_wid
    fi
done
