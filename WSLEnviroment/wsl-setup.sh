#!/bin/bash

echo "User Name:"
whoami

# update and upgrade
sudo apt-get update && sudo apt-get upgrade

# Install python3
apt-get install python3 -y

# verify
python3 --version

# install pip3
apt-get install python3-pip -y

# veriy
pip3 --version

# update git
sudo apt-get upgrade git

# install zsh
sudo apt-get install zsh

# telnet
sudo apt-get install telnet

# tmux 
sudo apt-get install tmux

# vim
sudo apt-get install vim

# wget 
sudo apt-get install wget


