#alias ls='lsd -al'
alias ls='exa -al --icons --grid --long'
alias path='echo -e ${PATH//:/\\n}A'
alias ?='duck'
alias ??='google'
alias ?w='duck_for_w3m'
alias ??w='google_for_w3m'
#alias pf='fzf-preview'
#alias pf="fzf --preview 'batcat --style=numbers --color=always --line-range :50 {}' --bind alt-j:preview-page-up,alt-k:preview-page-down"
alias bat='batcat'
alias fd='fdfind'
alias tmatrix='tmatrix --fade -c default -C green'
alias tor='rtorrent'
alias rm='rm -vi'
alias neo='neofetch --ascii_distro Debian --ascii_colors 2 5 6 1'
alias toipe='tmux popup -E -w 60% -h 40% "toipe"'
alias tmux='tmux -u'
alias vim='nvim'
alias keyrate="xset r rate 400 100"
alias rice="wget -qO- http://git.io/rice"
alias mask="stty -echo"
alias unmask="stty echo"
alias wallpaper="bg-animator ~/wallpaper/dark_souls.mp4 &> /dev/null"
alias qemu="sudo virsh net-start default"
alias grep="grep --color=auto"
alias grep="fgrep --color=auto"
alias grep="egrep --color=auto"
