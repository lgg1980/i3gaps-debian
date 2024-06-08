# Various additional command line things
apt install -y mc squashfuse cmatrix iw playerctl
apt install -y cifs-utils hfsplus hfsutils hfsutils-tcltk
apt install -y xarchiver p7zip-full unace zip unzip sharutils uudeview mpack arj cabextract file-roller zstd
apt install -y xclip libnotify-bin

apt install -y gufw gparted bleachbit gdebi dosbox 
apt install -y flatpak

apt install -y fonts-powerline fonts-liberation2
apt install -y numix-gtk-theme numix-icon-theme numix-icon-theme-circle

# Multimedia
apt install -y clementine qbittorrent kid3 vlc youtube-dl kdenlive handbrake
apt install -y obs-studio simplescreenrecorder

# Basic
apt install -y galculator keepassxc remmina timeshift
# Internet
apt install -y filezilla thunderbird thunderbird-l10n-es-es webext-tbsync telegram-desktop
# Image
apt install -y ristretto pinta flameshot
# lock screen
apt install -y xss-lock i3lock

# flatpak

FLATPAK_LIST=(
	net.veloren.airshipper
	net.davidotek.pupgui2
	org.jdownloader.JDownloader
	io.dbeaver.DBeaverCommunity
    nz.mega.MEGAsync
    com.github.eneshecan.WhatsAppForLinux
    com.discordapp.Discord
)

# add flathub repository
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

apt update

# add third party software
 
# update repositories

apt-get update -yq

for flatpak_name in ${FLATPAK_LIST[@]}; do
	if ! flatpak list | grep -q $flatpak_name; then
		flatpak install "$flatpak_name" -y
	else
		echo "$package_name already installed"
	fi
done
# -----------------------------------------------------------------------------------------------------------------------
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
dpkg -i ./onlyoffice-desktopeditors_amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
wget https://github.com/manga-download/hakuneko/releases/download/v6.1.7/hakuneko-desktop_6.1.7_linux_amd64.deb
dpkg -i ./hakuneko-desktop_6.1.7_linux_amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
wget https://github.com/fastfetch-cli/fastfetch/releases/download/2.15.0/fastfetch-linux-amd64.deb
dpkg -i ./fastfetch-linux-amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
# Required
pip3 install netifaces suntime python-dateutil

apt --fix-broken install # onlyoffice dependencies

# fun
# commented on 18/09/2022 must be 'relaxed' until real install, working great on VM tho
# sudo apt install -y etw openttd

# cd ~/
# mkdir conty
# cd conty
# wget https://github.com/Kron4ek/Conty/releases/download/1.21.1/conty.sh
