#!/usr/bin/env zsh

echo $(curl -s "wttr.in/$(cat location)?format=%l%20-%20+%C,%20+%t")
