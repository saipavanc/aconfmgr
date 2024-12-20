# Base pkgs

AddPackage aconfmgr-git # A configuration manager for Arch Linux
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage chaotic-keyring # Chaotic-AUR PGP keyring
AddPackage chaotic-mirrorlist # Chaotic-AUR mirrorlist to use with Pacman
AddPackage pfetch # A pretty system information tool written in POSIX sh.
AddPackage git # the fast distributed version control system
AddPackage yay # Yet another yogurt. Pacman wrapper and AUR helper written in go.

# BSPWM env

AddPackage bspwm # Tiling window manager based on binary space partitioning
AddPackage sxhkd # Simple X hotkey daemon
AddPackage picom # Lightweight compositor for X11
AddPackage touche # The desktop application to configure Touchégg
AddPackage xdo # Utility for performing actions on windows in X
AddPackage xorg-xwininfo # Command-line utility to print information about windows on an X server



# Extra pkgs
AddPackage slack-desktop # Slack Desktop (Beta) for Linux
AddPackage zoom # Video Conferencing and Web Conferencing Service
AddPackage visual-studio-code-bin # Visual Studio Code (vscode): Editor for building and debugging modern web and cloud applications (official binary version)
AddPackage zotero-bin # Zotero Standalone. Is a free, easy-to-use tool to help you collect, organize, cite, and share your research sources.
AddPackage discord # All-in-one voice and text chat for gamers
AddPackage dropbox # A free service that lets you bring your photos, docs, and videos anywhere and share them easily.
AddPackage evince # Document viewer (PDF, PostScript, XPS, djvu, dvi, tiff, cbr, cbz, cb7, cbt)
AddPackage obsidian # A powerful knowledge base that works on top of a local folder of plain text Markdown files

AddPackage --foreign miniconda3 # Mini version of Anaconda Python distribution
CreateLink /etc/profile.d/conda.sh /opt/miniconda3/etc/profile.d/conda.sh

AddPackage --foreign globalprotect-openconnect-git # A GUI for GlobalProtect VPN, based on OpenConnect, supports the SSO authentication method.
