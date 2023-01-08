# Setup fzf
# ---------
if [[ ! "$PATH" == */home/darkstar/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/darkstar/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/darkstar/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/darkstar/.fzf/shell/key-bindings.bash"



# Setting up some environment variables for fzf
#----------------------------------------------
#fzf tree preview for directories.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    *)            fzf "$@" ;;
  esac
}

#Commands that are too long are not fully visible on screen. We can use --preview option to display the full command on the preview window. In the following example, we bind ? key for toggling the preview window.

export FZF_CTRL_R_OPTS="--preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"

#Preview for fuzzy finding the files by piping fzf into batcat
export FZF_CTRL_T_OPTS="--preview 'batcat --theme gruvbox-dark --style=numbers --color=always --line-range :50 {}' --bind alt-j:preview-page-up,alt-k:preview-page-down"

#Using fd instead of find for fzf
export FZF_DEFAULT_COMMAND='fd . $HOME --hidden --follow --exclude .git'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME --hidden"
