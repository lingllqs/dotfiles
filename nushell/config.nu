source ~/.zoxide.nu

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
def gls [x: int = 10] {
    git log --pretty=(ansi red)%h»¦«(ansi yellow)%s | lines | split column "»¦«" sha1 desc | first $x
}

# 详细查看 git 仓库 log 信息
def gll [x: int = 10] {
    git log --pretty=(ansi red)%h»¦«(ansi blue)%aN»¦«(ansi green)%cd»¦«(ansi yellow)%s --date=format:'%Y-%m-%d %H:%M'| lines | split column "»¦«" sha1 committer merged_at desc | first $x
}

$env.config = {
    show_banner: false # 欢迎信息
    ls: {
        clickable_links: true    # 链接是否可点击，需要终端模拟器支持
    }
    table: {
        mode: rounded # 列表显示模式
    }
    datetime_format: {
        normal: '%Y-%m-%d %H:%M:%S %A' # 日期格式
    }
    history: {
        max_size: 100000 # 历史命令记录长度
    }
    completions: {
        case_sensitive: false # 补全大小写敏感
        quick: false          # 只有一项的时候不自动选择
        algorithm: prefix     # 补全算法
    }
    cursor_shape: { # 光标形状
        emacs: blink_line
        vi_insert: blink_line
        vi_normal: blink_block
    }
    edit_mode: vi # 编辑模式 emacs,vi
    highlight_resolved_externals: true
    hooks: {
            display_output: "if (term size).columns >= 50 { table -e } else { table  }"
    }
    keybindings: [
        {
            name: cut_line_from_start
            modifier: control
            keycode: char_u
            mode: [emacs, vi_insert]
            event: {edit: cutfromstart}
        }
        {
            name: cut_line_to_end
            modifier: control
            keycode: char_k
            mode: [emacs, vi_insert]
            event: {edit: cuttoend}
        }
    ]
}
