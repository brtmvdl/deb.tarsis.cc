#!/bin/bash

echo Testing sudo
sudo echo OK

echo
echo Installing Node.js LTS
echo
sudo apt-get update
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

echo
echo Installing development tools
echo
sudo apt-get install gcc g++ make

echo
echo Installing Yarn package manager
echo
sudo apt-get -y update
sudo apt-get -y install yarn

echo node --version
node --version
echo npm --version
npm --version
echo yarn --version
yarn --version
