#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# set spotify password to env
bw login --apikey > /dev/null 2>&1;
BW_SESSION=$(bw unlock --passwordenv BW_PASSWORD --raw); export BW_SESSION
SPT_PASS=$(bw get password Spotify); export SPT_PASS
bw lock > /dev/null 2>&1;
bw logout > /dev/null 2>&1;

tmux new -d -s spotifyd;
tmux send-keys -t spotifyd "spotifyd --no-daemon" C-m;

xrandr --output DVI-D-0 --off --output HDMI-0 --mode 1920x1080 --pos 4480x0 --rotate left --output HDMI-1 --mode 1920x1080 --pos 0x420 --rotate normal --output DP-0 --mode 2560x1440 --pos 1920x315 --rotate normal --output DP-1 --off --output DP-2 --off --output DP-3 --off

exec awesome
