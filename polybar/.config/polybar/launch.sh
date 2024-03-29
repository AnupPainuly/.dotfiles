#!/usr/bin/env bash

# Otherwise you can use the nuclear option:
killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar main_bar 2>&1 | tee -a /tmp/polybar1.log & disown

if [[ $(xrandr -q | grep 'HDMI-2 connected') ]]; then
    polybar external_bar &
fi

echo "Bars launched..."
