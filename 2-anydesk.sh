sudo wget -O- https://keys.anydesk.com/repos/DEB-GPG-KEY | gpg --dearmor | sudo tee /usr/share/keyrings/anydesk.gpg
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/anydesk.gpg] http://deb.anydesk.com/ all main' | sudo tee /etc/apt/sources.list.d/anydesk.list
sudo apt update
sudo apt install anydesk -y
