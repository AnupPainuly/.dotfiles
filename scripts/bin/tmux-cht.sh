#!/usr/bin/env bash

#Description: Opens the query relating to languages and core utils in a new tmux window.
#Dependencies: curl, tmux, fzf, batcat

languages=$(echo -e "c lua python" | tr ' ' '\n')
core_utils=$(echo -e "mv find rm grep awk sed nmcli" | tr ' ' "\n")

selected=$(printf "$languages\n$core_utils" | fzf)
read -rp "query: " query

if printf '%s' "$languages" | grep -qs "$selected"; then
	curl -sS cht.sh/"$selected"/"$(echo "$query" | tr ' ' '+')" | batcat & 
	while  : 
	do 
		sleep 1; 
	done
else
	curl -sS cht.sh/"$selected"~"$query" | batcat & 
	while  : 
	do 
		sleep 1
	done
fi
