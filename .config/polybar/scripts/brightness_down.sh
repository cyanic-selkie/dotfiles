#!/usr/bin/env bash

level=$(ddcutil getvcp 10 | sed -n 's/.*current\ value\ =[\ ]\+\([0-9]\+\).*/\1/p')

level=$(($level - 15))

if [ $level -le 0 ]; then
    level=0
fi

ddcutil setvcp 10 $level

echo " $level%"
