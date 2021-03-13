#!/bin/sh

#Adding ppas
add-apt-repository ppa:atareao/telegram -y

#Updating apt
apt update

#Installing packages

#Applications
apt install telegram -y


#Command Line Tools
apt install zsh -y
apt install guake -y

#Guake como terminal default
gsettings set org.gnome.desktop.default-applications.terminal exec 'guake --new-tab'
gsettings set org.gnome.desktop.default-applications.terminal exec-arg '-e'


#Instalando PowerLevel10k
if [ ! -d "/home/jonathanmuniz/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/jonathanmuniz/.oh-my-zsh/custom/themes/powerlevel10k
fi






