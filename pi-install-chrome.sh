#!/bin/bash
# install chrome manually for Pionux OS
# autor KOOMPI pi@koompi.com


# first check if git already in stalled 
# if not, then do the install
pacman -Qq | grep -qw git || sudo pacman -S git

# make temperary folder in download called .picache
mkdir ~/Downloads/.picache; cd ~/Downloads/.picache

# clone the source code from aur git, then cd to it
git clone https://aur.archlinux.org/google-chrome.git; cd google-chrome

# make the binary file, then install with pacman
makepkg -s 
sudo pacman -U *pkg.tar.xz

# remove .picache folder and delete itself
rm -rf .~/Downloads/.picache
find . -name "pi-install*.sh" | xargs -0 rm -rf