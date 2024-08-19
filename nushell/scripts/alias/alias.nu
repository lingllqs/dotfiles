export alias ll = ls -la
export alias l = ls -l
export alias ls = eza
export alias lt = eza -T
export alias v = nvim
export alias vi = vim
export alias md = mkdir
export alias cat = bat -p
export alias la = eza -a

# export alias gll = git --no-pager log --pretty=tformat:'%C(red)%h%Creset %C(yellow)%s%Creset' --graph -n 10
# export alias glll = git --no-pager log --date=format:'%Y-%m-%d %H:%M' --pretty=tformat:"%C(red)%h%Creset %C(blue)%cd%Creset %C(green)%cn%Creset %C(yellow)%s%Creset" --graph -n 10

# 简略查看 git 仓库 log 信息
def gls [
    n?: int = 10 # 显示日志信息行数
] {
    git log --pretty=(ansi red)%h»¦«(ansi yellow)%s | lines | split column "»¦«" sha1 desc | first $n
}

# 详细查看 git 仓库 log 信息
def gll [
    n?: int = 10 # 显示日志信息行数
] {
    git log --pretty=(ansi red)%h»¦«(ansi blue)%aN»¦«(ansi green)%cd»¦«(ansi yellow)%s --date=format:'%Y-%m-%d %H:%M'| lines | split column "»¦«" sha1 committer merged_at desc | first $n
}
