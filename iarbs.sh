#!/usr/bin/env bash

# Repo Additions

# Repo Installations
sudo apt install git -y
sudo apt install wget -y
sudo apt install curl -y
sudo apt install neovim -y
sudo apt install neofetch -y
sudo apt install zsh -y
sudo apt install pass -y
sudo apt install rip-grep -y
sudo apt install terminator -y
sudo apt install kwrite -y
sudo apt install audacious -y
sudo apt install kdenlive -y
sudo apt install haruna -y
sudo apt install gimp -y
sudo apt install ranger -y
sudo apt install mpv -y
sudo apt install simplescreenrecorder -y
sudo apt install vlc -y
sudo apt install net-tools -y
sudo apt install sqlmap -y
sudo apt install netdiscover -y
sudo apt install nmap -y
sudo apt install wireshark -y
sudo apt install cmake -y
sudo apt install nodejs -y
sudo apt install npm -y
sudo apt install exuberant-ctags -y


# Pip requirements for the repos below & vim plugins
# sudo pip3 install -r requirements.txt

# Install some dot files
curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.zshrc -o ~/.zshrc

curl -Ls https://raw.githubusercontent.com/LinuxUser255/BashAndLinux/main/UsrBin/.bashrc -o ~/.bashrc

# Hacking Tools
git clone https://github.com/aboul3la/Sublist3r.git /opt/Sublist3r/
git clone https://github.com/secureauthcorp/impacket.git /opt/impacket/
git clone https://github.com/LinuxUser255/BashAndLinux.git /opt/BashAndLinux/
git clone https://github.com/danielmiessler/SecLists.git  /opt/Seclists/
git clone https://github.com/defparam/smuggler.git /opt/smuggler/
git clone https://github.com/swisskyrepo/PayloadsAllTheThings.git /opt/Pay-Loads-All-The-Things/
git clone https://github.com/LinuxUser255/RandoHackingStuff.git /opt/HackingStuff/
git clone https://github.com/LinuxUser255/Mullvad_Wireguard.git /opt/Mullvad_Wireguard/
git clone https://github.com/LinuxUser255/Instagram-downloader.git /opt/Instagram-downloader/
git clone https://github.com/LinuxUser255/passwordgen.git /opt/passwordgen/
git clone https://github.com/LinuxUser255/Python_Intruder.git  /opt/Python_Intruder/
git clone https://github.com/PortSwigger/http-request-smuggler.git /opt/http-request-smuggler/
git clone https://github.com/LinuxUser255/Python-Object-Oriented-Programming---4th-edition.git  /opt/Python-Object-Oriented-Programming---4th-edition/
git clone https://github.com/LinuxUser255/Micro-Degree-in-Python-Security.git  /opt/Micro-Degree-in-Python-Security/
git clone https://github.com/LinuxUser255/Python-for-Everyday-Life.git  /opt/Python-for-Everyday-Life/
git clone https://github.com/LinuxUser255/Expert-Python-Programming-Fourth-Edition.git  /opt/Expert-Python-Programming-Fourth-Edition/
git clone https://github.com/LinuxUser255/turbo-intruder.git  /opt/turbo-intruder/
git clone https://github.com/LinuxUser255/Python_Penetration_Testing.git  /opt/Python_Penetration_Testing/
git clone https://github.com/LinuxUser255/Python-Fundamentals.git  /opt/Python-Fundamentals/
git clone https://github.com/LinuxUser255/Modern-Python-Cookbook-Second-Edition.git  /opt/Modern-Python-Cookbook-Second-Edition/
git clone https://github.com/LinuxUser255/Python-3-Object-Oriented-Programming-Third-Edition.git  /opt/Python-3-Object-Oriented-Programming-Third-Edition/
git clone https://github.com/LinuxUser255/Clean-Code-in-Python-Second-Edition.git  /opt/Clean-Code-in-Python-Second-Edition/
git clone https://github.com/LinuxUser255/Functional-Python-Programming-Second-Edition.git  /opt/Functional-Python-Programming-Second-Edition/
git clone https://github.com/LinuxUser255/Python-Web-Scraping-Cookbook.git  /opt/Python-Web-Scraping-Cookbook/
git clone https://github.com/LinuxUser255/Python-Penetration-Testing-Cookbook.git  /opt/Python-Penetration-Testing-Cookbook/
git clone https://github.com/LinuxUser255/Learning-Concurrency-in-Python.git  /opt/Learning-Concurrency-in-Python/
git clone https://github.com/LinuxUser255/Mastering-Python-Networking.git  /opt/Mastering-Python-Networking/
git clone https://github.com/LinuxUser255/Effective-Python-Penetration-Testing.git  /opt/Effective-Python-Penetration-Testing/
git clone https://github.com/LinuxUser255/Python-Web-Scraping-Second-Edition.git  /opt/Python-Web-Scraping-Second-Edition/
git clone https://github.com/LinuxUser255/Welcome_to_INITECH.git  /opt/Welcome_to_INITECH/
git clone https://github.com/LinuxUser255/MS17-011.git  /opt/MS17-011/

#Spiderfoot
wget https://github.com/smicallef/spiderfoot/archive/v4.0.tar.gz -P /opt/scrawler/spiderfoot/v4.0.tar.gz
tar zxvf v4.0.tar.gz
cd spiderfoot-4.0
pip3 install -r requirements.txt

# Install Wireguard and Mullvad
chmod +x /opt/Mullvad_Wireguard/install.sh
sh /opt/Mullvad_Wireguard/install.sh

# Install Obsidian, the markdown note taking app
curl -Ls https://obsidian.md/Obsidian-0.15.9.AppImage -o  ~/.local/share/applications/Obsidian-0.15.9.AppImage
chmod +x /opt/Obsidian-0.15.9.AppImage

# Install Signal
# Install our official public software signing key
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# repository to your list of repositories
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# Update your package database and install signal
sudo apt update; sudo apt install signal-desktop

# Install Brave browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

# Download and Install INtelliJ IDE and Pycharm
#mkdir /opt/Pycharm
#sudo chown ${USER} /opt/Pycharm
#curl -Ls https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=linux&code=PCC -o /opt/Pycharm

#mkdir /opt/INtelliJ_Idea
#sudo chown ${USER} /opt/IntelliJ_IDEA
#curl -Ls https://www.jetbrains.com/idea/download/download-thanks.html?platform=linux&code=IIC -o /opt/IntelliJ_IDEA

# Install plugins for vim and neovim
## Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Chang Default Shell to use ZSH
chsh -s $(which zsh)

# NeoVim CHad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Final update
sudo apt update && sudo apt upgrade -y

echo ""
echo "DONE!"
echo ""
