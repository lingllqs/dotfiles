# export alias gll = git --no-pager log --pretty=tformat:'%C(red)%h%Creset %C(yellow)%s%Creset' --graph -n 10
# export alias glll = git --no-pager log --date=format:'%Y-%m-%d %H:%M' --pretty=tformat:"%C(red)%h%Creset %C(blue)%cd%Creset %C(green)%cn%Creset %C(yellow)%s%Creset" --graph -n 10

# 简略查看 git 仓库 log 信息
def gls [x?: int = 10] {
    git log --pretty=(ansi red)%h»¦«(ansi yellow)%s | lines | split column "»¦«" sha1 desc | first $x
}

# 详细查看 git 仓库 log 信息
def gll [x?: int = 10] {
    git log --pretty=(ansi red)%h»¦«(ansi blue)%aN»¦«(ansi green)%cd»¦«(ansi yellow)%s --date=format:'%Y-%m-%d %H:%M'| lines | split column "»¦«" sha1 committer merged_at desc | first $x
}

