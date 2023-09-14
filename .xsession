#!/bin/bash

if [[ -f "$HOME/.xinitrc" ]]; then
  source "$HOME/.xinitrc"
else
  echo "Warning: ~/.xinitrc not found."
fi

exec dwm
