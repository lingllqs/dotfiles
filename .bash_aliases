alias ls="eza"
alias l='eza -lh'
alias ll='eza -lah'
alias la='eza -a'
alias lt='eza --tree'
alias v="nvim"
alias yy="yazi"
alias gcm='git commit -m'
# alias gls='git --no-pager log --pretty=tformat:"%C(red)%h%Creset %C(yellow)%s%Creset" --graph -n 10'
# alias gll='git --no-pager log --date=format:"%Y-%m-%d %H:%M" --pretty=tformat:"%C(red)%h%Creset %C(blue)%cd%Creset %C(green)%cn%Creset %C(yellow)%s%Creset" --graph -n 10'

gls() {
    local n=${1:-10}  # 默认显示最近 10 条
    git --no-pager log \
    --pretty=tformat:"%C(red)%h%Creset %C(yellow)%s%Creset" \
    --date=format:"%Y-%m-%d %H:%M" --graph -n "$n"
}

gll() {
    local n=${1:-10}
    git --no-pager log \
    --pretty=tformat:"%C(red)%h%Creset %C(blue)%cd%Creset %C(green)%cn%Creset %C(yellow)%s%Creset" \
    --date=format:"%Y-%m-%d %H:%M" --graph -n "$n"
}
