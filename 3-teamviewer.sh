wget -O- https://download.teamviewer.com/download/linux/signature/TeamViewer2017.asc | gpg --dearmor | sudo tee /usr/share/keyrings/teamview.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/teamview.gpg] http://linux.teamviewer.com/deb stable main" \ | sudo tee /etc/apt/sources.list.d/teamviewer.list
doas apt update
doas apt install teamviewer -y
