#!/bin/bash
osascript -e 'display dialog "'"Battery Status: $( pmset -g batt | egrep "([0-9]+\%).*" -o | tr ";" "," )"'" buttons {"Close"} default button "Close"'
