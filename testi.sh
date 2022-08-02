#! /bin/bash

GREEN='\033[01;32m'
NONE='\033[00m'
Yellow='\033[01;33m'
Blue='\033[0;34m'

sudo apt-get upgrade

echo -e "${GREEN}Installing application via apt...${NONE}"
echo -e "${GREEN}curl ${NONE}"
sudo apt-get -y install curl 
echo -e "${GREEN}wget${NONE}"
sudo apt-get -y install wget 
echo -e "${GREEN}git${NONE}"
sudo apt-get -y install git 
echo -e "${GREEN}gnome-tweaks${NONE}"
sudo apt-get -y install gnome-tweaks 
echo -e "${GREEN}gnome-shell-extensions${NONE}"
sudo apt-get -y install gnome-shell-extensions 
echo -e "${GREEN}gufw${NONE}"
sudo apt-get -y install gufw
echo -e "${GREEN}htop${NONE}"
sudo apt-get -y install htop
echo -e "${GREEN}neofetch${NONE}"
sudo apt-get -y install neofetch
echo -e "${GREEN}bashtop${NONE}"
sudo apt-get -y install bashtop
echo -e "${GREEN}vlc${NONE}"
sudo apt-get -y install vlc
echo -e "${GREEN}zsh${NONE}"
sudo apt-get -y install zsh


echo -e "${GREEN}Installing java and the compiler...${NONE}"
sudo apt -y install default-jre
sudo apt -y install default-jdk

echo -e "${GREEN}Downloading DISCORD...${NONE}"
wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
echo -e "\n${GREEN}Installing DISCORD...${NONE}"
sudo dpkg -i discord.deb

echo -e "\n${GREEN}Downloading BETERDISCORD...${NONE}"
curl -O https://raw.githubusercontent.com/bb010g/betterdiscordctl/master/betterdiscordctl
echo -e "\n${GREEN}Changing permission [BETERDISCORD]...${NONE}"
chmod +x betterdiscordctl
echo -e "\n${GREEN}Moving to the bin folder [BETERDISCORD]...${NONE}"
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
sudo apt update && sudo apt -y install github-desktop

echo -e "${GREEN}Installing VSCodium...${NONE}"
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update && sudo apt install -y codium

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

echo -e "${GREEN}Installing qBitTorrent...${NONE}"
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt -y install qbittorrent

echo -e "${GREEN}Installing spotify...${NONE}"
#getting the key
wget -O- https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/spotify.gpg
#adding the key to the repo
echo "deb [signed-by=/usr/share/keyrings/spotify.gpg] http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client -y

echo -e "${GREEN}Installing application via snap...${NONE}"
sudo snap install sublime-text --classic
sudo snap install spotify


echo -e "${GREEN}Updating...${NONE}"
sudo apt-get update
