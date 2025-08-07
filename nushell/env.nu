# nushell 环境配置文件


# 命令行左边提示符
def create_left_prompt [] {
    starship prompt $'--status=($env.LAST_EXIT_CODE)'
    # starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)'
}

# 定义命令行右边提示符
def create_right_prompt [] {
    let time_segment = ([
        (ansi reset)
        (ansi magenta)
        (date now | format date '%x %X %p')
    ] | str join | str replace --regex --all "([/:])" $"(ansi green)${1}(ansi magenta)" |
        str replace --regex --all "([AP]M)" $"(ansi magenta_underline)${1}")

    let last_exit_code = if ($env.LAST_EXIT_CODE != 0) {([
        (ansi rb)
        ($env.LAST_EXIT_CODE)
    ] | str join)
    } else { "" }

    ([$last_exit_code, (char space), $time_segment] | str join)
}

# 左边命令行提示符
$env.PROMPT_COMMAND = {|| create_left_prompt }
# 右边命令行提示符
$env.PROMPT_COMMAND_RIGHT = {||}

# 命令提示状态，例如vi模式下用什么符号提示你正在vi模式下
$env.PROMPT_INDICATOR = {||}
$env.PROMPT_INDICATOR_VI_INSERT = {|| "" }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| "" }
$env.PROMPT_MULTILINE_INDICATOR = {|| "::: " }


# 命令执行完后提示符样式
# $env.TRANSIENT_PROMPT_COMMAND = {|| "🚀 " }
# $env.TRANSIENT_PROMPT_INDICATOR = {|| "" }
# $env.TRANSIENT_PROMPT_INDICATOR_VI_INSERT = {|| "" }
# $env.TRANSIENT_PROMPT_INDICATOR_VI_NORMAL = {|| "" }
# $env.TRANSIENT_PROMPT_MULTILINE_INDICATOR = {|| "" }
# $env.TRANSIENT_PROMPT_COMMAND_RIGHT = {|| "" }

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
$env.ENV_CONVERSIONS = {
    "PATH": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
    "Path": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
}

# nushell 脚本目录
$env.NU_LIB_DIRS = [
    ($nu.default-config-dir | path join 'scripts')
]

# nushell 插件目录
$env.NU_PLUGIN_DIRS = [
    ($nu.default-config-dir | path join 'plugins')
]

# 路径环境变量
$env.PATH = ($env.PATH | split row (char esep) | prepend '~/.local/bin/')

# 默认文本编辑器，也可以在 config.nu 文件配置 buffer_editor
# $env.EDITOR = nvim

# 目录快捷跳转工具 zoxide 配置
$env._ZO_ECHO = 1
zoxide init --hook pwd nushell | save -f ~/.zoxide.nu

# starship 配置
$env.STARSHIP_SHELL = "nu"
$env.STARSHIP_CONFIG = ([$env.HOME, "/.config/starship/starship.toml"] | str join)
#starship init nu | save -f ~/.cache/starship/init.nu

# man 手册高亮
$env.MANROFFOPT = "-c"
$env.MANPAGER = "sh -c 'col -bx | bat -l man -p'"

# dwl 目录
#$env.DWL = [$env.HOME, "/APP/dwl"] | str join

# rust 镜像
$env.RUSTUP_DIST_SERVER = "https://rsproxy.cn"
$env.RUSTUP_UPDATE_ROOT = "https://rsproxy.cn/rustup"

$env.CARGO_UNSTABLE_SPARSE_REGISTRY = true
$env.FNM_NODE_DIST_MIRROR = "https://mirrors.tuna.tsinghua.edu.cn/nodejs-release/"

$env.https_proxy = "http://127.0.0.1:7897"
