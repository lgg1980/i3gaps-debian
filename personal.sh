# Various additional command line things
sudo apt install mc squashfuse cmatrix iw playerctl
sudo apt install -y cifs-utils hfsplus hfsutils hfsutils-tcltk exfat-utils apt-transport-https
sudo apt install -y rar p7zip-rar xarchiver p7zip-full unace zip unzip sharutils uudeview mpack arj cabextract file-roller zstd
sudo apt install -y xclip libnotify-bin

sudo apt install -y gufw gparted bleachbit gdebi dosbox

sudo apt install -y fonts-powerline fonts-liberation2

# Multimedia
sudo apt install -y clementine qbittorrent kid3 vlc youtube-dl kdenlive handbrake
sudo apt install -y obs-studio simplescreenrecorder

# Basic
sudo apt install -y qutebrowser filezilla keepassxc thunderbird thunderbird-l10n-es-es webext-tbsync telegram-desktop remmina timeshift
# Image
sudo apt install -y ristretto pinta flameshot
# Conky
sudo apt install -y conky-all

mkdir ~/.config/conky
conky -C > ~/.config/conky/conky.conf

# Required
pip3 install netifaces suntime python-dateutil

# fun
# commented on 18/09/2022 must be 'relaxed' until real install, working great on VM tho
# sudo apt install -y etw openttd

# cd ~/
# mkdir conty
# cd conty
# wget https://github.com/Kron4ek/Conty/releases/download/1.21.1/conty.sh
