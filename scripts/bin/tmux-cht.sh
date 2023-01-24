#!/usr/bin/env bash

#Description: Opens the query relating to languages and core utils in a new tmux window.
#Dependencies: curl, tmux, fzf

languages=$(echo "c cpp lua" | tr ' ' "\n")
core_utils=$(echo "mv find rm grep awk sed" | tr ' ' "\n")

selected=$(printf '%s' "$languages\n$core_utils" | fzf)
read -rp "query: " query

if printf '%s' "$languages" | grep -qs "$selected"; then
	curl cht.sh/"$selected"/"$(echo "$query" | tr ' ' '+')" & 
	while  : 
	do 
		sleep 1; 
	done
else
	curl cht.sh/"$selected"~"$query" & 
	while  : 
	do 
		sleep 1
	done
fi
