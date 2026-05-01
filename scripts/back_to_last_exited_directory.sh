#!/usr/bin/env sh

if [ -f "$HOME/.last_dir" ]; then
	lastdir=$(cat "$HOME/.last_dir")
else
	# touch "$HOME/.last_dir"
	lastdir="$HOME"
fi

PROMPT_COMMAND='pwd > "$HOME/.last_dir"; '"$PROMPT_COMMAND"
cd "$lastdir"
