#!/bin/bash
cd ~
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install mc zsh vim -y

echo "alias ..='cd ..'" >> ~/.zshrc
echo "alias ...='cd ../..'" >> ~/.zshrc
echo "alias ....='cd ../../..'" >> ~/.zshrc
echo "alias c='clear'" >> ~/.zshrc
echo "alias del='sudo rm -rf'" >> ~/.zshrc
echo "alias sources='source ~/.zshrc'" >> ~/.zshrc
source ~/.zshrc

# install google chrome
# http://help.ubuntu.ru/wiki/google_chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable -y

# install nodejs
# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

# install sublime-text
# https://www.sublimetext.com/docs/3/linux_repositories.html
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y

# install atom
# http://www.webupd8.org/2014/06/atom-text-editor-available-for-linux.html
sudo add-apt-repository ppa:webupd8team/atom -y
sudo apt-get update
sudo apt-get install atom -y

# install telegram
# https://launchpad.net/~atareao/+archive/ubuntu/telegram
sudo add-apt-repository ppa:atareao/telegram -y
sudo apt-get update
sudo apt-get install telegram -y

# install Rhythmbox
# http://ubuntuhandbook.org/index.php/2017/10/rhythmbox-3-4-2-release-how-to-install-ppa/
sudo add-apt-repository ppa:ubuntuhandbook1/apps -y
sudo apt-get update
sudo apt-get install rhythmbox -y

# install gitkraken
# https://gist.github.com/developer-prosenjit/93d534ce3dc8442be16a990abd678f10
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i --force-depends gitkraken-amd64.deb
sudo apt-get install -f
rm -f gitkraken-amd64.deb

# install yarn
# https://yarnpkg.com/en/docs/install
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

# install docker
wget -qO- https://get.docker.com/ | sh

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install vim config
curl https://raw.githubusercontent.com/vaeum/cdn/master/server/vim/vimrc > ~/.vimrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get clean
