#!/bin/sh

( xrdb $HOME/.Xresources
  xsetroot -cursor_name left_ptr
  setxkbmap -option terminate:ctrl_alt_bksp
  xset r rate 200
  xset b 0
  xmodmap $HOME/.xmodmaprc
  xbindkeys
  numlockx on
  dpms-settings
  xset m 1 1
  xinput --set-prop 'Logitech Anywhere MX' 'libinput Accel Speed' -0.75
  xinput --set-prop 'pointer:Logitech MX Anywhere 2' 'libinput Accel Speed' -0.75
) &

media
video left middle right
nitrogen --restore
# (sleep 2 && compton --backend glx --vsync opengl-swc) &
gkrellm &
dunst &

exec bash -c '(dbus-launch run-wingo ; (while true; do sleep 1000; done))'
