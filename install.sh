#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
dpkg --add-architecture i386

apt install -y curl wget apt-transport-https gnupg2 dirmngr rsync

apt install -y xorg 

# Python installed for bumblebee-status. PACKAGE INCLUDES build-essential.
apt install -y python3-pip 

# Microcode for Intel/AMD 
apt install -y amd-microcode
#apt install -y intel-microcode 

# Network Manager
apt install -y network-manager-gnome

# Installation for Appearance management
apt install -y lxappearance 

# File Manager (nemo)
apt install -y nemo

# Network File Tools/System Events
apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

systemctl enable avahi-daemon
systemctl enable acpid

# Terminal (eg. terminator,kitty,xfce4-terminal)
apt install -y kitty

# Sound packages
apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# htop
apt install -y htop

# Printing and bluetooth (if needed)
apt install -y cups
apt install -y bluez blueman

systemctl enable bluetooth
systemctl enable cups

# Browser Installation (eg. chromium)
apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
apt install -y feh

# Required packages for i3-gaps installation
apt install -y meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev i3status

# Packages needed i3-gaps after installation
apt install -y dmenu sxhkd numlockx rofi dunst libnotify-bin picom unzip mousepad simple-scan

# Install fonts
apt install fonts-font-awesome fonts-powerline fonts-ubuntu fonts-liberation2 fonts-liberation fonts-terminus fonts-cascadia-code

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
ninja install

apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
systemctl enable lightdm

# XSessions and i3.desktop
if [[ ! -d /usr/share/xsessions ]]; then
    sudo mkdir /usr/share/xsessions
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
sudo cp ./temp /usr/share/xsessions/i3.desktop;rm ./temp
########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/i3gaps-debian/nerdfonts.sh
source ~/i3gaps-debian/copyconf.sh
source ~/i3gaps-debian/personal.sh

apt autoremove -y

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
