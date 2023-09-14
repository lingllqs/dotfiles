_OMZ_APPLY_PREEXEC_HOOK=true
_OMZ_APPLY_CHPWD_HOOK=true
_OMZ_APPLY_HISTORYBYFZF=true
source ~/.config/omz/omz.zsh

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

alias lv='lvim'
alias tl='charcoal query'
alias f='ranger'
alias p='procs'
alias ls='eza'
alias l='eza -l --icons'
# alias l="nu -c 'ls -l'"
alias ll='eza -la --icons'
# alias ll="nu -c 'ls -la'"
alias la='eza -a'
alias lt='eza -T'
alias v='nvim'
alias df='duf'

eval "$(fnm env --use-on-cd)"
export FNM_NODE_DIST_MIRROR=https://mirrors.tuna.tsinghua.edu.cn/

export PATH=$PATH:$HOME/.local/bin/

source /home/lqs/.config/broot/launcher/bash/br
