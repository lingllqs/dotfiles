$env.config = {
    buffer_editor: nvim # 默认文本编辑器
    menus: [
        {
            name: completion_menu
            only_buffer_difference: false
            marker: ""
            type: {
                layout: columnar
                columns: 4
                col_width: 20
                col_padding: 2
            }
            style: {
                text: green_italic
                selected_text: "#faaaff"
                description_text: "#ffffaa"
            }
        }
    ]
    show_banner: false # 欢迎信息
    ls: {
        clickable_links: true # 链接是否可点击，需要终端模拟器支持
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
    hooks: {
        display_output: "if (term size).columns >= 50 { table -e } else { table }"
        pre_prompt: {||}
        pre_execution: {||}
        env_change: {
            PWD: [
                { 
                    condition: {|before, after| $before != $after}
                    code: {|before, after| ($after | save -f ([$env.OMN, "/cache/currentdir.txt"] | str join) --stderr /dev/null)}
                }
            ]
        }
    }
}

source ~/.config/nushell/scripts/themes/colors.nu
source ~/.config/nushell/scripts/alias/alias.nu
source ~/.config/nushell/scripts/git/git-completion.nu
#source ~/.config/nushell/scripts/filesystem/autojump.nu
source ~/.config/nushell/scripts/filesystem/back_to_last_dir.nu
source ~/.config/nushell/scripts/yazi/yazi.nu
#use ~/.cache/starship/init.nu
source ~/.zoxide.nu
