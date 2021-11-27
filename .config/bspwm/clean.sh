#!/bin/bash

# This configuration file is meant for applications that
# still run in the background when a reload is triggered
# for bspwm, this script just kills the running instance.
#
# Only add applications/scripts without parameters here
# (if you want to apply parameters then use a script file!)

# List of applications to kill
APPS=(
    sxhkd,
    firefox,
    polybar
    )


# Kill lingering apps
for app in "${APPS[@]}"
do
    #kill -9 $(pidof $app)
    pkill $app
done
