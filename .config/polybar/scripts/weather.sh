#!/usr/bin/env zsh

echo $(curl -s "wttr.in/$(cat ~/.config/polybar/scripts/location)?format=%l%20-%20+%C,%20+%t")
