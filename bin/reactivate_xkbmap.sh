#!/usr/bin/env bash

# reactivate usual keybindings. Used when disconnecting from "emacs" mode
setxkbmap -option 2>/dev/null
setxkbmap -option grp:setxkbmap -option grp:alt_shift_toggle us,lt  2>/dev/null
setxkbmap -option caps:escape 2>/dev/null
