#!/bin/sh

#Adding ppas
add-apt-repository ppa:atareao/telegram -y


#Updating apt
apt update

#Installing packages

#Applications

#General
apt install telegram -y

dpkg --status teams &> /dev/null
if ! [ $? -eq 0 ]; then
    sudo -u jonathanmuniz wget "https://teams.microsoft.com/downloads/desktopurl?env=production&plat=linux&arch=x64&download=true&linuxArchiveType=deb" -O teams.deb
    apt install ./teams.deb
    rm -rf teams.deb
    sudo apt-get install -y $1
fi


#Programming
apt install code -y
sudo -u jonathanmuniz flatpak install flathub com.jetbrains.Rider -y
sudo apt-get install -y gitk 

git clone https://github.com/dracula/gitk.git
mkdir -p /home/jonathanmuniz/.config/git
cp gitk/gitk /home/jonathanmuniz/.config/git/
rm -rf gitk

#Command Line Tools
apt install zsh -y
apt install guake -y

#Instalando PowerLevel10k
if [ ! -d "/home/jonathanmuniz/.oh-my-zsh/custom/themes/powerlevel10k" ]; then
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git /home/jonathanmuniz/.oh-my-zsh/custom/themes/powerlevel10k
fi

#Instalando zinit
sudo -u jonathanmuniz sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"






