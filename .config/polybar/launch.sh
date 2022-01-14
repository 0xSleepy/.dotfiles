#!/bin/sh

killall -q polybar

while pgrep -x polybar >/dev/null; do
	sleep 1
done
if pgrep spotify &>/dev/null
then
	polybar spotifyz & 
fi

polybar work0 &
polybar work1 &
polybar windows &
polybar status &
