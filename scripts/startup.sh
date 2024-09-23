#!/usr/bin/env sh

startup() {
    waybar &
    fcitx5 &
    dunst &
    clash-verge
    nm-applet --indicator
    blueman-applet
    udiskie
    /usr/lib/polkit-kde-authentication-agent-1
    wl-paste --type text --watch cliphist store
    wl-paste --type image --watch cliphist store
    systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
    dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
    dbus-update-activation-environment --systemd --all
    $HOME/scripts/wallpaper.sh
    [ $1 ] && sleep $1
}

startup 1 &
