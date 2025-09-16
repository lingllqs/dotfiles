### ~/.bash_profile ###

# default file permission: dir/file:750/640
[ "$UID" -eq 0 ] || umask 027

[[ -n "$BASH_VERSION" && -f "$HOME/.bashrc" ]] && . "$HOME/.bashrc"

# set PATH so it includes user's private bin if it exists
[ -d "$HOME/.local/bin" ] && PATH="$HOME/.local/bin:${PATH}"
[ -d "$HOME/.local/sbin" ] && PATH="$HOME/.local/sbin:${PATH}"

# colorize manpage
[ -x /usr/bin/bat ] && export MANROFFOPT="-c" && export MANPAGER="sh -c 'col -bx | bat -l man -p'"

bind 'TAB:menu-complete'
bind '"\e[Z":menu-complete-backward'  # Shift+Tab 反向循环

### ENVIRONMENT VARIABLES ###
export TERM=xterm-256color
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8   # locale
export EDITOR="/usr/bin/nvim"

# firefox pixel-perfect trackpad scrolling
export MOZ_USE_XINPUT2=1
# export BROWSER="/usr/bin/firefox-nightly"
export XDG_DOWNLOAD_DIR="$HOME/Downloads"
export XDG_DOCUMENTS_DIR="$HOME/Documents"
export XDG_MUSIC_DIR="$HOME/Music"
export XDG_PICTURES_DIR="$HOME/Pictures"
export XDG_VIDEOS_DIR="$HOME/Videos"
export FZF_DEFAULT_OPTS_FILE="$HOME/.config/fzf/fzfrc"
### CLEAN-UP HOME ###
export XDG_CONFIG_HOME="$HOME/.config"      # analogous to /etc
export XDG_CACHE_HOME="$HOME/.cache"        # analogous to /var/cache
export XDG_DATA_HOME="$HOME/.local/share"   # analogous to /usr/share
export XDG_STATE_HOME="$HOME/.local/state"

export https_proxy="http://127.0.0.1:7897"


### IME ###
# fcitx
# export GTK_IM_MODULE="wayland;fcitx"
# export XMODIFIERS=@im=fcitx
# export QT_IM_MODULE="wayland;fcitx;ibus"
# export INPUT_METHOD=fcitx
# export SDL_IM_MODULE=fcitx
# export GLFW_IM_MODULE=fcitx
# export MOZ_ENABLE_WAYLAND=1
# ibus
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus

### THEMES ###
# qt
# export QT_QPA_PLATFORMTHEME=qt5ct
# export QT_STYLE_OVERRIDE=adwaita-dark
# gtk
# export GTK_THEME=Adwaita-dark # for firejail'ed libreoffice

### WAYLAND ###
# export ELECTRON_OZONE_PLATFORM_HINT=wayland # electron
#export WLR_NO_HARDWARE_CURSORS=1 # external monitor cursor on nvidia
# sway terminal freezes
# export WLR_DRM_NO_ATOMIC=1


