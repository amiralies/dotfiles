#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" = "eDP1" ]; then
      MONITOR=$m polybar --reload sieverbaredp1 &
    fi

    if [ "$m" = "DP1" ]; then
       MONITOR=$m polybar --reload sieverbardp1 &
    fi

    if [ "$m" = "HDMI1" ]; then
        MONITOR=$m polybar --reload sieverbar &
     fi
  done
fi

echo "Polybar launched..."

