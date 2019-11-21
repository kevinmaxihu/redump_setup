#!/bin/bash

if [ -z $2 ]; then
    echo "Usage : ./TKHP_initconfig [dnf/apt-get/etc..] prenom.nom@epitech.eu"
	exit 84
fi

pack="sudo $1 install"
git="git clone"
mail=$2

echo -n "Laptop Password :"
read -s pass
echo "\n"

#$git https://github.com/kayofeld/script-installation-ordinateur-epitech.git
#cd script-installation-ordinateur-epitech
#cd installation
#./install $mail
$pack i3 -y < $pass
$pack feh -y
$pack scrot -y
$pack ImageMagick -y
$pack thunar -y
$pack i3lock -y
$pack network-manager-applet.x86_64 -y
$pack blueman.x86_64 -y
$pack compton -y
$pack rofi -y
$pack pavucontrol -y
tar -xvf config.tar.gz
tar -xvf pwndbg.tar.gz
cd pwndbg
./setup.sh
cd ..
cp .i3 ~/.i3
cp .prepare_my_repo.sh ~/.prepare_my_repo.sh
cp .zshrc ~/.zshrc
mv config ~/.config
rm -rf config
cd ~/
$git https://github.com/Airblader/i3blocks-gaps.git
cd i3blocks-gaps
make install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s $(which zsh)
sudo pkill -KILL -u raj
# git le backup de kéké
# discord/discord.sh

