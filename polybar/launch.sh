#!/bin/bash

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use
# polybar-msg cmd quit
CONFIG="/home/luis/.config/openbox/polybar/config.ini"

# Launch Polybar, using default config location ~/.config/polybar/config.ini
polybar --config=$CONFIG mybar 2>&1 | tee -a /tmp/polybar.log & disown

echo "Polybar launched..."
