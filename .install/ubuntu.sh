#!/usr/bin/env sh

sudo add-apt-repository -y ppa:russell-s-stewart/ppa
sudo apt-get update
sudo apt-get -y install \
    build-essential cmake xmonad libghc-xmonad-dev libghc-xmonad-contrib-dev \
    suckless-tools vim xfonts-terminus rxvt-unicode python2.7-dev htop tree \
    dzen2 ranger numlockx xxkb lftp colordiff ncdu feh pydf cloc zathura dtrx \
    fish exuberant-ctags silversearcher-ag chromium-browser ruby golang sshrc \
    libxtst-dev

cd /tmp
rm -rf xcape
git clone https://github.com/alols/xcape.git
cd xcape
make
sudo make install
