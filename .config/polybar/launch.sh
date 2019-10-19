#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" = "eDP-1" ]; then
      MONITOR=$m polybar --reload sieverbaredp1 &
    else
   MONITOR=$m polybar --reload sieverbar &
     fi
  done
fi

echo "Polybar launched..."

