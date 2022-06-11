#! /bin/bash

GREEN='\033[01;32m'
NONE='\033[00m'

sudo apt-get upgrade
sudo apt-get update

echo -e "${GREEN}Installing application via apt...${NONE}"
sudo apt-get install curl wget git gnome-tweaks zsh

echo -e "${GREEN}Downloading DISCORD...${NONE}"
#wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"


ls -a
echo -e "\n${GREEN}Installing DISCORD...${NONE}"
#dpkg -i discord.deb 

echo -e "${GREEN}Installing ulancher...${NONE}"
#sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

echo -e "${GREEN}Installing OH MY ZSH...${NONE}"
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


echo -e "${GREEN}Cloning POWERLEVEL10k...${NONE}"
#git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo -e "${GREEN}Changing omzsh theme to POWERLEVEL10k...${NONE}"
sed -i '18s/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k/powerlevel10k"/' ~/.zshrc
cat ~/.zshrc

echo -e "${GREEN}Installing application via snap...${NONE}"
#sudo snap install --classic code
#sudo snap install spotify 