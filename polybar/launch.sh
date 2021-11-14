#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar left &
polybar mid &
polybar right &
#polybar title &

echo "Polybar started..."
