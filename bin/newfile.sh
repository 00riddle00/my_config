#!/usr/bin/env sh

# used for custom "Create New File" shortcut in Thunar
file=$(zenity --entry \
        --title "Create New File" \
	--text "Enter the new name:" \
	--entry-text ""); touch "$file"
