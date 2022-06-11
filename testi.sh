#! /bin/bash

GREEN='\033[01;32m'
NONE='\033[00m'
Yellow='\033[01;33m'
Blue='\033[0;34m'

sudo apt-get upgrade

echo -e "${GREEN}Installing application via apt...${NONE}"
sudo apt-get install curl wget git gnome-tweaks gnome-shell-extensions zsh gufw htop neofetch bashtop VLC

echo -e "${GREEN}Downloading DISCORD...${NONE}"
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
echo -e "\n${GREEN}Installing DISCORD...${NONE}"
dpkg -i discord.deb

echo -e "\n${GREEN}Downloading BETERDISCORD...${NONE}"
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
echo -e "\n${GREEN}Changing permission [BETERDISCORD]...${NONE}"
chmod +x betterdiscordctl
echo -e "\n${GREEN}Moving to the bin foler [BETERDISCORD]...${NONE}"
sudo mv betterdiscordctl /usr/local/bin
echo -e "\n${GREEN}Installing BETTERDISCORD...${Yellow}"
betterdiscordctl --d-install traditional install
echo -e "${NONE}"

echo -e "${GREEN}Installing ulancher...${NONE}"
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

echo -e "${GREEN}Downloading chrome...${NONE}"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo -e "${GREEN}Installing chrome...${NONE}"
sudo dpkg -i google-chrome-stable_current_amd64.deb


echo -e "${GREEN}Installing Github desktop...${NONE}"
wget -qO - https://mirror.mwt.me/ghd/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'
sudo apt update && sudo apt install github-desktop

echo -e "${GREEN}Installing OH MY ZSH...${NONE}"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo -e "${GREEN}Cloning POWERLEVEL10k...${NONE}"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo -e "${Yellow}Changing omzsh theme to POWERLEVEL10k...${NONE}"
sed -i '18s/robbyrussell/powerlevel10k\/powerlevel10k/' ~/.zshrc
echo -e "${Blue}"
sed -n 16,19p ~/.zshrc
echo -e "${NONE} \n ${Yellow}Check if the omzsh theme has changed to POWERLEVEL10k...${NONE}"
sleep 2

echo -e "${GREEN}Installing application via snap...${NONE}"
sudo snap install --classic code
sudo snap install sublime-text --classic
sudo snap install spotify

echo -e "${GREEN}Updating...${NONE}"
sudo apt-get update
