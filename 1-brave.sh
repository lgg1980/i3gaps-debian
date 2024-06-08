apt install software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
wget -O- https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg | gpg --dearmor | tee /usr/share/keyrings/brave-browser-archive-keyring.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main | tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser -y
