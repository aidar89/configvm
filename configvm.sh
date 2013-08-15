cd $HOME

apt-get update
apt-get dist-upgrade

apt-get install -y openssh-server
apt-get install -y python-software-properties python g++ make
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs
npm install -g express

apt-get install -y git-core
git config --global user.name "Aidar"
git config --global user.email aidar@outlook.com

git clone https://github.com/startup-class/setup.git
./setup/setup.sh

git clone https://github.com/aidar89/bitstarter
