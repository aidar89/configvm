#!/bin/bash

start_time=`date +%s`
echo "Started script execution on" `date`

cd $HOME

apt-get update
apt-get dist-upgrade

apt-get install -y openssh-server
apt-get install -y python-software-properties python g++ make
add-apt-repository -y ppa:chris-lea/node.js
apt-get update
apt-get install -y nodejs
npm install -g express

apt-get install -y git-core
git config --global user.name "Aidar"
git config --global user.email aidar@outlook.com

git clone https://github.com/startup-class/setup.git
./setup/setup.sh

git clone https://github.com/aidar89/bitstarter

end_time=`date +%s`
time_elapsed=$(($end_time-$start_time))
echo "Ended script execution on" `date`
echo "Script execution took $time_elapsed seconds."
