#!/usr/bin/env sh

sudo apt-add-repository -y ppa:russell-s-stewart/ppa
sudo apt-add-repository -y ppa:fish-shell/release-2
sudo apt-get update
sudo apt-get -y install \
    build-essential cmake xmonad libghc-xmonad-dev libghc-xmonad-contrib-dev \
    suckless-tools vim xfonts-terminus rxvt-unicode-256color python2.7-dev \
    dzen2 ranger numlockx xxkb lftp colordiff ncdu feh pydf cloc zathura dtrx \
    fish exuberant-ctags silversearcher-ag chromium-browser ruby golang sshrc \
    libxtst-dev wmctrl autoconf libncurses5-dev htop tree

cd /tmp
rm -rf xcape
git clone https://github.com/alols/xcape.git
cd xcape
make
sudo make install
