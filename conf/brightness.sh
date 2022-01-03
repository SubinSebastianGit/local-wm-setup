#!/bin/bash

sleep 5
brightness_level=1
screenname=$(xrandr | grep " connected" | cut -f1 -d " ")
xrandr --output $screenname --brightness $brightness_level
