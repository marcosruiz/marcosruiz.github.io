sudo printf "
deb https://packages.zorinos.com/stable bionic main
# deb-src https://packages.zorinos.com/stable bionic main

deb https://packages.zorinos.com/patches bionic main
# deb-src https://packages.zorinos.com/patches bionic main

deb https://packages.zorinos.com/apps bionic main
# deb-src https://packages.zorinos.com/apps bionic main

deb https://packages.zorinos.com/drivers bionic main restricted
# deb-src https://packages.zorinos.com/drivers bionic main restricted

deb http://ppa.launchpad.net/zorinos/stable/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/stable/ubuntu bionic main

deb http://ppa.launchpad.net/zorinos/patches/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/patches/ubuntu bionic main

deb http://ppa.launchpad.net/zorinos/apps/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/apps/ubuntu bionic main

deb http://ppa.launchpad.net/zorinos/drivers/ubuntu bionic main
# deb-src http://ppa.launchpad.net/zorinos/drivers/ubuntu bionic main
" >> /etc/apt/sources.list

sudo gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv 30FCF8F64F71B61C
sudo gpg --export --armor 30FCF8F64F71B61C | sudo apt-key add -
sudo gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv 40E0F448B35AB199
sudo gpg --export --armor 40E0F448B35AB199 | sudo apt-key add -
sudo apt-get update
sudo apt install -y xfce4
sudo apt install -y zorin-os-lite-desktop
