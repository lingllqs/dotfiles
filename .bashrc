### ~/.bashrc ###

# If not running interactively, don't do anything
# 判断当前 shell 是否为交互 shell，不是则什么都不做(避免在运行脚本时候的一些不必要的加载)
[[ $- != *i* ]] && return


# 启动时回到上次的目录
if [ -f ~/.config/bash/last-exit-dir.txt ]; then
    cd "$(cat ~/.config/bash/last-exit-dir.txt)"
else
    mkdir -p "$HOME/.config/bash"
    touch "$HOME/.config/bash/last-exit-dir"
fi


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# 保存上次退出时的目录
PROMPT_COMMAND='pwd > ~/.config/bash/last-exit-dir.txt'



# alias ls='ls --color=auto'
# alias grep='grep --color=auto'

# prompt
# 命令行提示符
# PS1='[\u@\h \W]\$ '

. "$HOME/.cargo/env"


# enable programmable completion
# 启用补全程序
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

### SHELL OPTIONS ###
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

eval "$(fzf --bash)"

HISTCONTROL=ignoreboth      # ignore identical or empty lines in history

shopt -s histappend         # append instead of overwrite history
shopt -s autocd             # auto cd when entering a path
shopt -s globstar           # enable "**" wildcard for more subdir
shopt -s checkwinsize       # check window size after each command


# starship
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init bash)"
eval "$(fnm env --use-on-cd --shell bash)"

# zoxide
eval "$(zoxide init bash)"

# source $HOME/.config/fzf/fzf-tab-completion/bash/fzf-bash-completion.sh
# bind -x '"\t": fzf_bash_completion'

if uwsm check may-start && uwsm select; then
	exec systemd-cat -t uwsm_start uwsm start default
fi
