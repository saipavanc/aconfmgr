#!/usr/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#change your keyboard if you need it
#setxkbmap -layout be

#xsetroot -cursor_name left_ptr &
run sxhkd -c ~/.config/bspwm/sxhkd/sxhkdrc &
killall picom; sleep 1
picom --config $HOME/.config/bspwm/picom.conf &
#/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#/usr/lib/xfce4/notifyd/xfce4-notifyd &

# start gestures
# Kill existing Touchegg client processes
pkill -x touchegg # kills all user process of touchegg
sleep 1 && touchegg &

run dropbox &
