#!/bin/bash

# Options with icons (requires Nerd Fonts or Font Awesome)
rider="  Rider"
firefox="  Firefox"
dbeaver="🛢  DBeaver"
sshserver="  SSH Server"

# Show menu
selected_option=$(echo -e "$rider\n$firefox\n$dbeaver\n$sshserver" \
    | rofi -dmenu -i -p "My Apps" -theme ~/.config/rofi/power.rasi)

# Actions
case "$selected_option" in
    "$rider")
        rider &
        ;;
    "$firefox")
        firefox &
        ;;
    "$dbeaver")
        dbeaver &
        ;;
    "$sshserver")
        # Change terminal command to whatever you use: kitty, alacritty, foot, gnome-terminal, etc.
        kitty -e ssh youruser@yourserver &
        ;;
esac
