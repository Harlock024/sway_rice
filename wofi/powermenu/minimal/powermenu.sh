#!/bin/bash

dir="$HOME/.config/wofi/powermenu/minimal/"
theme="style-1"

op_shutdown="  Apagar"
op_reboot="󰜉  Reiniciar"
op_lock="  Bloquear"
op_suspend="󰤄  Suspender"
op_logout="󰈆  Cerrar Sesión"

options="$op_lock\n$op_suspend\n$op_logout\n$op_reboot\n$op_shutdown"

chosen="$(echo -e "$options" | wofi --show dmenu \
    --width 250 \
    --height 280 \
    --style "${dir}/${theme}.css" \
    --cache-file /dev/null \
    --prompt "Sistema" \
    --no-actions \
    --hide-scroll)"

case $chosen in
    $op_shutdown)
        systemctl poweroff ;;
    $op_reboot)
        systemctl reboot ;;
    $op_lock)
        swaylock ;;
    $op_suspend)
        systemctl suspend ;;
    $op_logout)
        # Cambia según tu compositor (swaymsg exit, hyprctl dispatch exit, etc.)
        loginctl terminate-user $USER ;;
esac
