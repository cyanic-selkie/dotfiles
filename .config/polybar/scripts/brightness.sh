#!/usr/bin/env bash

feature=$(ddcutil capabilities | grep Brightness | awk '{print $2}')
level=$(ddcutil getvcp $feature | sed -n 's/.*current\ value\ =[\ ]\+\([0-9]\+\).*/\1/p')

echo " $level%"
