#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
doas apt install -y xorg 

# Python installed for bumblebee-status. PACKAGE INCLUDES build-essential.
doas apt install -y python3-pip 

# Microcode for Intel/AMD 
doas apt install -y amd-microcode
#doas apt install -y intel-microcode 

# Network Manager
doas apt install -y network-manager-gnome

# Installation for Appearance management
doas apt install -y lxappearance 

# File Manager (eg. pcmanfm,krusader)
doas apt install -y thunar xfce4-settings

# Network File Tools/System Events
doas apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

doas systemctl enable avahi-daemon
doas systemctl enable acpid

# Terminal (eg. terminator,kitty,xfce4-terminal)
doas apt install -y kitty

# Sound packages
doas apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/btop
doas apt install -y neofetch btop

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
doas apt install -y exa

# Printing and bluetooth (if needed)
doas apt install -y cups
doas apt install -y bluez blueman

doas systemctl enable bluetooth
doas systemctl enable cups

# Browser Installation (eg. chromium)
doas apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# example if you want to use in autostart.sh for i3-gaps
# doas apt install -y nitrogen 
doas apt install -y feh

# Required packages for i3-gaps installation
doas apt install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status

# Packages needed i3-gaps after installation
doas apt install -y dmenu sxhkd numlockx rofi dunst libnotify-bin picom unzip mousepad simple-scan

# Install fonts
doas apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus fonts-cascadia-code

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

# Install i3 gaps
cd
cd Downloads
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
doas ninja install

doas apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
doas systemctl enable lightdm

# XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    doas mkdir /usr/share/xsessions
fi

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=i3
Comment=Dynamic window manager
Exec=i3
Icon=i3
Type=XSession
EOF
doas cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp
########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/i3gaps-debian/nerdfonts.sh
source ~/i3gaps-debian/copyconf.sh
source ~/i3gaps-debian/personal.sh

doas apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
