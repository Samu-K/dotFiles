#bin/sh

tmux kill-session -t spotifyd
tmux new-session -d -s spotifyd "spotifyd --no-daemon"

spt
