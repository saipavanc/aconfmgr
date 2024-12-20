#!/usr/bin/bash

INTERNAL_MONITOR="eDP"  # Replace with your internal monitor name
EXTERNAL_MONITOR="HDMI-A-0" # Replace with your external monitor name

# Function to move all windows to the internal monitor
move_windows_to_internal() {
    for window in $(bspc query -N -m $EXTERNAL_MONITOR); do
        bspc node $window -m $INTERNAL_MONITOR
    done
}

# Function to remove desktops from external monitor
remove_external_desktops() {
    for desktop in $(bspc query -D -m $EXTERNAL_MONITOR); do
        bspc desktop $desktop --remove
    done
}

# Check if external monitor is disconnected
if ! xrandr | grep -q "$EXTERNAL_MONITOR connected"; then
    move_windows_to_internal
    remove_external_desktops
    bspc monitor $INTERNAL_MONITOR -d 1 2 3 4 5 6 7 8 9 10
    bspc wm -O $INTERNAL_MONITOR
else
    bspc monitor "$EXTERNAL_MONITOR" -d 11 12 13 14 15
    bspc monitor "$INTERNAL_MONITOR" -d 1 2 3 4 5 6 7 8 9 10
    bspc wm -O "$INTERNAL_MONITOR" "$EXTERNAL_MONITOR"
fi
