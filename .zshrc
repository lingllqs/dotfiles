alias l='eza -l --icons'
alias ls='eza'
alias la='eza -a'
alias ll='eza -al --icons'
alias lt='eza -T'
alias v='nvim'

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'


eval "$(zoxide init zsh)"

eval "$(starship init zsh)"
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml

export HTTPS_PROXY="http://127.0.0.1:7897"


# git 相关快捷键
hashColor=${gitHashColor:-"magenta"}
contentColor=${gitContentColor:-"cyan"}
dateColor=${gitDateColor:-"yellow"}
authorColor=${gitAuthorColor:-"blue"}

gitlog() {
    git --no-pager log --date=format:'%Y-%m-%d %H:%M'  --pretty=tformat:$1 --graph -n ${2-10} \
}

gll() {
    gitlog "%C(${hashColor})%h %C(${contentColor})%s%Creset" $1
}

glll() { 
    gitlog "%C(${hashColor})%h %C(${dateColor})%cd %C(${authorColor})%cn: %C(${contentColor})%s%Creset" $1
}
