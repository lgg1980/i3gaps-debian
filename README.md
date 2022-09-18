# i3gaps
# Works great with Debian Testing / Devuan Ceres

# beware!: it's a fork and a personal mod from https://github.com/drewgrif/i3gaps-debian 

NOTES:

lightdm it's perfect for me. So I choose it.

18/09/2022.... still learning to adjust it to my very own tastes. So much work to do!

```
sudo apt install git

git clone --branch personal https://github.com/lgg1980/i3gaps-debian

cd i3gaps-debian

./install.sh (includes nerdfonts.sh and copyconf.sh unless commented)
```

OPTIONAL:
Nerd Fonts installed by default but can be commented out of install.sh
```
# source ~/i3gaps-debian/nerdfonts.sh
```
OPTIONAL:
Customized configuration installed by default but can be commented out of install.sh
```
# source ~/i3gaps-debian/copyconf.sh
```
NOT OPTIONAL
```
sudo reboot
```
