#!/bin/bash

function run {
 if ! pgrep $1 ;
  then
    $@&
  fi
}

run "nm-applet"
run "xfce4-power-manager"

# run "/usr/lib/xfce4/notifyd/xfce4-notifyd"
run "/usr/lib/x86_64-linux-gnu/xfce4/notifyd/xfce4-notifyd"

# run "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
run "/usr/lib/policykit-1-gnome/polkit-gnome-authentication-agent-1"

picom &
#run "numlockx on"

run "volumeicon"
run slstatus &

#sxhkd -c ~/.config/arco-dwm/sxhkd/sxhkdrc &
#run "nitrogen --restore"
#run "conky -c $HOME/.config/arco-dwm/system-overview"
#you can set wallpapers in themes as well
#feh --bg-fill /usr/share/backgrounds/archlinux/arch-wallpaper.jpg &
#feh --bg-fill /usr/share/backgrounds/arcolinux/arco-wallpaper.jpg &
#wallpaper for other Arch based systems
#feh --bg-fill /usr/share/archlinux-tweak-tool/data/wallpaper/wallpaper.png &

# Live wallpaper
xwinwrap -fs -ov -ni -- mpv -wid WID -loop $HOME/Videos/Live\ Wallpapers/2wIACHP04qQ.webm &

#run applications from startup
run "flatpak run com.microsoft.Edge"
run "gnome-calendar"
