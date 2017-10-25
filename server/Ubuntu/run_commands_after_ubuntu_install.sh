sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install mc zsh python3-pip ruby-full -y

pip3 install --upgrade pip
sudo pip3 install docker-compose

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install nodejs -y

# install global npm packages
sudo npm i -g npm npm-check nodemon webpack babel-cli eslint gulp np

echo "depth=0" >> ~/.npmrc
echo "init.author.name=Alexander Anpleenko" >> ~/.npmrc
echo "init.author.email=vaeum@outlook.com" >> ~/.npmrc
echo "init.author.url=http://vaeum.com" >> ~/.npmrc

echo "alias ..='cd ..'" >> ~/.zshrc
echo "alias ...='cd ../..'" >> ~/.zshrc
echo "alias ....='cd ../../..'" >> ~/.zshrc
echo "alias c='clear'" >> ~/.zshrc
echo "alias del='sudo rm -rf'" >> ~/.zshrc
echo "alias sources='source ~/.zshrc'" >> ~/.zshrc
source ~/.zshrc

# install docker
wget -qO- https://get.docker.com/ | sh

sudo apt-get clean

# install vim config
curl https://raw.githubusercontent.com/vaeum/cdn/master/server/vim/vimrc > ~/.vimrc

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
