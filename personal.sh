# Various additional command line things
doas apt install -y mc squashfuse cmatrix iw playerctl
doas apt install -y cifs-utils hfsplus hfsutils hfsutils-tcltk exfat-utils apt-transport-https gnupg2
doas apt install -y p7zip-rar xarchiver p7zip-full unace zip unzip sharutils uudeview mpack arj cabextract file-roller zstd
doas apt install -y xclip libnotify-bin

doas apt install -y gufw gparted bleachbit gdebi dosbox 

doas apt install -y fonts-powerline fonts-liberation2
doas apt install -y numix-gtk-theme numix-icon-theme numix-icon-theme-circle
doas apt install -y obsidian-icon-theme papirus-icon-theme

# Multimedia
doas apt install -y clementine qbittorrent kid3 vlc youtube-dl kdenlive handbrake
doas apt install -y simplescreenrecorder

# Basic
doas apt install -y galculator keepassxc remmina timeshift
# Internet
doas apt install -y qutebrowser filezilla thunderbird thunderbird-l10n-es-es webext-tbsync telegram-desktop
# Image
doas apt install -y ristretto flameshot
# lock screen
doas apt install -y xss-lock i3lock
# -----------------------------------------------------------------------------------------------------------------------
# grab codium
echo "Grabbing VSCode without telemetry"
sleep 1
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | doas dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | doas tee --append /etc/apt/sources.list.d/vscodium.list 
doas apt update -yq && doas apt install codium -yq
# -----------------------------------------------------------------------------------------------------------------------
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
doas dpkg -i ./onlyoffice-desktopeditors_amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
wget https://github.com/manga-download/hakuneko/releases/download/v6.1.7/hakuneko-desktop_6.1.7_linux_amd64.deb
doas dpkg -i ./hakuneko-desktop_6.1.7_linux_amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
doas apt --fix-broken install # onlyoffice dependencies

# fun
# commented on 18/09/2022 must be 'relaxed' until real install, working great on VM tho
# doas apt install -y etw openttd

# cd ~/
# mkdir conty
# cd conty
# wget https://github.com/Kron4ek/Conty/releases/download/1.21.1/conty.sh
