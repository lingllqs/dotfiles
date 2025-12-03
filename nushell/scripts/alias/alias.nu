# export alias l = exa -lhg
# export alias ll = exa -lhga
# export alias ls = exa
# export alias la = exa -a
# export alias lt = exa -T
export alias v = nvim
export alias vi = vim
# export alias md = mkdir
export alias cat = bat -p


# export alias gll = git --no-pager log --pretty=tformat:'%C(red)%h%Creset %C(yellow)%s%Creset' --graph -n 10
# export alias glll = git --no-pager log --date=format:'%Y-%m-%d %H:%M' --pretty=tformat:"%C(red)%h%Creset %C(blue)%cd%Creset %C(green)%cn%Creset %C(yellow)%s%Creset" --graph -n 10

# 简略查看 git 仓库 log 信息
# @param n: 显示信息的行数，默认为10
def gls [n?: int = 10] {
    git log --pretty=(ansi red)%h»¦«(ansi yellow)%s | lines | split column "»¦«" sha1 desc | first $n
}

# 详细查看 git 仓库 log 信息
# @param n: 显示信息的行数，默认为10
def gll [n?: int = 10] {
    git log --pretty=(ansi red)%h»¦«(ansi blue)%aN»¦«(ansi green)%cd»¦«(ansi yellow)%s --date=format:'%Y-%m-%d %H:%M'| lines | split column "»¦«" sha1 committer merged_at desc | first $n
}

def search [keyword: string] {
	let url = $"https://www.google.com/search?q=($keyword | url encode)"
	firefox --new-tab $url
}

def lg [path?: string = "."] {
	ls $path | grid -c
}

def l [path?: string = "."] {
	ls -l $path | select type mode size user group modified name
}
