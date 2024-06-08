wget -O- https://keys.anydesk.com/repos/DEB-GPG-KEY | gpg --dearmor | tee /usr/share/keyrings/anydesk.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/anydesk.gpg] http://deb.anydesk.com/ all main' | tee /etc/apt/sources.list.d/anydesk.list
apt update
apt install anydesk -y
