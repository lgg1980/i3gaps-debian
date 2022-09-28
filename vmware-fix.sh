sudo git clone -b workstation-$( grep player.product.version /etc/vmware/config | sed '/.*\"\(.*\)\".*/ s//\1/g' ) https://github.com/mkubecek/vmware-host-modules.git /opt/vmware-host-modules/
cd /opt/vmware-host-modules/

sudo make
sudo make install
