white_list=(
    'saipavanchitta/.bashrc'
    'saipavanchitta/.inputrc'
    'saipavanchitta/.config/ranger/*'
    'saipavanchitta/.config/nvim/*'
    'saipavanchitta/.config/touchegg/*'
    'saipavanchitta/.config/bspwm/*'
    'saipavanchitta/.config/autostart/*'
    'saipavanchitta/.config/kitty/*'
    'saipavanchitta/.config/systemd/*'
    'saipavanchitta/.config/kdeconnect/*'
    'saipavanchitta/.config/kscreenlockerrc'
    'saipavanchitta/.config/mimeapps.list'
)

IgnorePathsExcept '/home' "${white_list[@]}"
