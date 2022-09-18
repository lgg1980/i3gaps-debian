# Various additional command line things
sudo apt install mc squashfuse cmatrix iw playerctl
sudo apt install -y cifs-utils hfsplus hfsutils hfsutils-tcltk exfat-utils apt-transport-https
sudo apt install -y rar p7zip-rar xarchiver p7zip-full unace zip unzip sharutils uudeview mpack arj cabextract file-roller zstd
sudo apt install -y xclip libnotify-bin

sudo apt install -y gufw gparted bleachbit gdebi dosbox 
sudo apt install -y flatpak

sudo apt install -y fonts-powerline fonts-liberation2
sudo apt install -y numix-gtk-theme numix-icon-theme numix-icon-theme-circle

# Multimedia
sudo apt install -y clementine qbittorrent kid3 vlc youtube-dl kdenlive handbrake
sudo apt install -y obs-studio simplescreenrecorder

# Basic
sudo apt install -y galculator keepassxc remmina timeshift
# Internet
sudo apt install -y qutebrowser filezilla thunderbird thunderbird-l10n-es-es webext-tbsync telegram-desktop
# Image
sudo apt install -y ristretto pinta flameshot
# lock screen
sudo apt install -y xss-lock i3lock

# flatpak

FLATPAK_LIST=(
	net.veloren.airshipper
	net.davidotek.pupgui2
	org.jdownloader.JDownloader
	io.dbeaver.DBeaverCommunity
  nz.mega.MEGAsync
  com.github.eneshecan.WhatsAppForLinux
  com.discordapp.Discord
  com.anydesk.Anydesk
)

# add flathub repository
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo apt update

# add third party software
 
# update repositories

sudo apt-get update -yq

for flatpak_name in ${FLATPAK_LIST[@]}; do
	if ! flatpak list | grep -q $flatpak_name; then
		flatpak install "$flatpak_name" -y
	else
		echo "$package_name already installed"
	fi
done

# grab codium
echo "Grabbing VSCode without telemetry"
sleep 1
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg 
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list 
sudo apt update -yq && sudo apt install codium -yq
# -----------------------------------------------------------------------------------------------------------------------
wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb
sudo dpkg -i ./onlyoffice-desktopeditors_amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
wget https://github.com/manga-download/hakuneko/releases/download/v6.1.7/hakuneko-desktop_6.1.7_linux_amd64.deb
sudo dpkg -i ./hakuneko-desktop_6.1.7_linux_amd64.deb
# -----------------------------------------------------------------------------------------------------------------------
# Required
pip3 install netifaces suntime python-dateutil

sudo apt --fix-broken install # onlyoffice dependencies

# fun
# commented on 18/09/2022 must be 'relaxed' until real install, working great on VM tho
# sudo apt install -y etw openttd

# cd ~/
# mkdir conty
# cd conty
# wget https://github.com/Kron4ek/Conty/releases/download/1.21.1/conty.sh
