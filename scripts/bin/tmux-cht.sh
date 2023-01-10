
#!/usr/bin/env bash

#Objective
#Opens the query relating to languages and core utils in a new tmux window.

languages=`echo "c cpp lua" | tr ' ' "\n"`
core_utils=`echo "mv find rm grep awk sed" | tr ' ' "\n"`

selected=`printf "$languages\n$core_utils" | fzf`
read -p "query: " query

if printf $languages | grep -qs $selected; then
  curl cht.sh/$selected/`echo $query | tr ' ' '+'` & while [ : ]; do sleep 1; done
else
  curl cht.sh/$selected~$query & while [ : ]; do sleep 1; done
fi
