#!/bin/bash

brightness_level=0.4
screenname=$(xrandr | grep " connected" | cut -f1 -d " ")
xrandr --output $screenname --brightness $brightness_level
