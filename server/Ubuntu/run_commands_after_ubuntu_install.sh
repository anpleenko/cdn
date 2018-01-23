sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install mc zsh -y

echo "alias ..='cd ..'" >> ~/.zshrc
echo "alias ...='cd ../..'" >> ~/.zshrc
echo "alias ....='cd ../../..'" >> ~/.zshrc
echo "alias c='clear'" >> ~/.zshrc
echo "alias del='sudo rm -rf'" >> ~/.zshrc
echo "alias sources='source ~/.zshrc'" >> ~/.zshrc
source ~/.zshrc

# install docker
wget -qO- https://get.docker.com/ | sh

# install docker-compose
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# install vim config
curl https://raw.githubusercontent.com/vaeum/cdn/master/server/vim/vimrc > ~/.vimrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

sudo apt-get clean
