#!/usr/bin/env bash

tmux new vim -c "e /home/riddle/Dropbox/sync/gtd/coding/koding.md | :cd %:p:h | cd .. | :NERDTreeToggle %:p:h | colorscheme miro8 "
