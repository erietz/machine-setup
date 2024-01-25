#!/usr/bin/env bash


# NOTE: may have to do this first if vim already installed
#
# sudo apt remove neovim
# sudo apt autoremove

# build prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl

git clone https://github.com/neovim/neovim

cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo


# alternative is to do a `sudo make install`
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb
